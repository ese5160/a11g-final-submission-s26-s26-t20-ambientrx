[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Y5lYn2wb)

# a11g-final-submission
**Team Number: 20**

**Team Name: AmbientRx**

**GitHub Repository URL: https://github.com/ese5160/a11g-final-submission-s26-s26-t20-ambientrx.git**

| Team Member Name      | Email Address           | GitHub Handle |
| --------------------- | ----------------------- | ------------- |
| Ananya Shivarama Bhat | ananya9@seas.upenn.edu  | ananya9-cyber |
| Anushka Jain          | anushkaj@seas.upenn.edu | anushkaj      |


## 1. Video Presentation

## Section 2: Project Summary

## Device Description:

AmbientRx is a smart ambient medicine storage box that monitors temperature, humidity, light exposure, and pill count inside the enclosure, while regulating internal climate via a fan and humidifier. It connects to the cloud over Wi-Fi and exposes a Node-RED dashboard so caregivers can remotely view conditions, get refill alerts, and intervene when storage conditions drift outside safe ranges.

## Inspiration & Problem

Many medications are sensitive to heat, humidity, and light, yet they sit in bathroom cabinets or kitchen counters where conditions vary widely throughout the day. Caregivers managing medications for elderly relatives or chronic patients have no visibility into whether storage conditions are actually safe, or whether refills are needed before the bottle runs out. AmbientRx solves this by turning a passive storage box into an active, networked guardian that both monitors and corrects the storage environment, and gives a remote view to a caregiver who may not be physically present.

## Internet Augmentation

The Internet connection transforms AmbientRx from a local sensor box into a remote care tool. Sensor telemetry is published over MQTT to a broker on an Azure VM and visualized on a Node-RED dashboard, so a caregiver anywhere in the world can see live temperature, humidity, light, and pill count. Control flows the other way too: dashboard toggles publish back to the device to actuate the fan and humidifier on demand. Firmware updates are delivered over the air via HTTP, so the device can be patched without physical access.

## Device Functionality

The system is built around a custom 4-layer 60mm × 60mm mixed-signal PCB carrying the Silicon Labs SiWx917 ARM Cortex-M4 Wi-Fi SoC. Sensing is handled by a Sensirion SHT41/SHT45 (temperature and humidity, I2C), a VEML7700 (ambient light, I2C), and an ArduCam OV2640 camera node running classical CV blob detection in HSV space for pill counting on a second SiWx917 dev board. Actuation is handled by a low-side N-channel MOSFET fan driver and a humidifier control line. Power is managed by a TI BQ24075 charger with a TPS62081 buck regulator generating the 3.3 V rail and a TPS63082 boost converter generating the 5 V rail for actuators and peripherals. Firmware runs FreeRTOS with separate tasks for sensing, MQTT publish/subscribe, actuator control, and OTA, communicating over queues and semaphores. The cloud side runs Mosquitto and Node-RED on an Azure VM, with a Dashboard 2.0 UI for the caregiver.

## Challenges

Recurring "Error 102" bricked state. The MCU intermittently dropped into a timed-out, bricked state during development with no clear trigger. Recovery required a J-Link mass-erase and reflash each time. We never fully root-caused it but learned to recognize the symptom early and recover quickly rather than burn hours debugging downstream effects.
I2C pin remapping. The SiWx917 datasheet lists pins 54 and 55 as valid I2C pins, but they did not work in practice on our board. We had to reroute the I2C bus to pins 6 and 7, which involved both firmware reconfiguration and bodge wiring on the PCB. This was the most painful kind of bug: the datasheet says one thing, the silicon does another, and the only way through is to try alternates and confirm with a logic analyzer.
Camera I2C voltage incompatibility. The ArduCam OV2640 ships with onboard pull-ups that tie SDA and SCL to 5 V. Our SHT45 and VEML7700 on the same I2C bus are 3.3 V parts and cannot tolerate being pulled to 5 V. This forced us to move the camera to a separate SiWx917 dev board on its own I2C segment rather than sharing the bus with the sensor cluster, which then drove the two-board architecture.
Faulty boost IC. On one assembled board the 5 V boost rail refused to come up under any load, while an identical second board worked. Replacing the boost IC on the bad board restored full functionality, which pointed to a faulty part rather than a layout or design issue. The lesson: always populate and bring up at least two boards in parallel so you can distinguish design defects from part-level defects.
Camera CV algorithm tradeoffs. Classical CV blob detection in HSV space was already pushing the memory and compute budget on the SiWx917 (QQVGA frames, TJpgDec decode, HSV conversion, blob labeling), yet it still struggled with accuracy under varied pill colors and lighting. We could not move to a heavier ML approach because the MCU was already saturated, and we could not get cleaner classical results without more compute. This is the clearest case in the project where the next iteration needs a different architecture rather than a tuning pass.
Fan driver topology. The original high-side fan switch did not pull the gate hard enough to fully turn on the MOSFET, so the fan ran weakly and inconsistently. Reworking to a low-side AO3400A N-channel topology fixed the drive strength and gave clean on/off behavior.
SDK churn and firmware recovery. WiseConnect SDK differences between 3.5.2 and 4.0.0 caused silent failures from incorrect feature bit maps, renamed APIs, and changed join callback signatures. One bring-up session left a board bricked after a flashing failure, recovered using J-Link mass-erase. CMSIS-RTOS2 threading patterns required careful study to avoid stack and priority misconfigurations.
OTA and MQTT integration. Getting sl_si91x_http_otaf to fetch and apply firmware images from blob storage required iterating on chunk handling and post-update reboot behavior. MQTT setup needed a Wi-Fi-up event group so the MQTT task did not race ahead of network association.
How they were overcome: methodical scope, multimeter, and logic analyzer probing for hardware; SDK release notes and example projects for firmware; comparing two assembled boards side-by-side to isolate part-level defects; and accepting PCB rework as a first-class debug strategy rather than working around root causes.

## Prototype Learnings

The biggest lesson was that integration cost dwarfs component cost. Each subsystem worked in isolation long before the full system worked end-to-end, and most of the actual time was spent on the seams: Wi-Fi → MQTT handoff, sensor task → publish queue, OTA → reboot → reconnect, camera bus voltage vs. sensor bus voltage. The second lesson was that datasheets lie, and silicon is the source of truth: the I2C pin remap, the bricked-state issue, and the faulty boost IC all required physical-layer debugging that no amount of code review would have caught.
If I built this again, I would: freeze the SDK version on day one, write a small board-support shim layer so application code does not depend on SDK-specific symbols, plan the I2C topology around voltage domains from the schematic stage rather than discovering the conflict at bring-up, populate at least two boards from the first PCB run so part-level defects are obvious, and add test points on every actuator gate, every rail, and every I2C segment from the first revision rather than adding them in rework.

## Next Steps & Takeaways

To finish or improve this project: move pill counting off the MCU entirely by either streaming compressed frames to a small edge inference service or upgrading to an SoC with an NPU, since the current SiWx917 is already saturated and the classical CV approach has hit its accuracy ceiling; add a level-shifted I2C bridge so the camera can sit on the main board without dragging the sensor bus to 5 V; add a sealed enclosure with a proper desiccant chamber so the humidifier has something meaningful to fight against; move from username/password MQTT to TLS with client certificates; and add persistent local logging on a microSD so the device tolerates Wi-Fi outages without losing data.
What ESE5160 taught: the full stack of edge IoT, from schematic capture through PCB layout, board bring-up, RTOS firmware, network protocols, cloud broker setup, and dashboard UX. More importantly, the discipline of going from a vague product idea to a working physical artifact through written requirements, scoped milestones, and honest validation testing — and the humility of letting bench measurements override what the datasheet says.

Project Links

Node-RED dashboard: [Link to Node-RED](http://20.110.157.53:1880/dashboard/a08g-color)

Altium 365 share link: [Link to Altium design](https://upenn-eselabs.365.altium.com/designs/3506AE2D-F326-4D9F-B4A0-18F05DBD5EB6#design)

YouTube demo:


## 3. Hardware & Software Requirements

## 4. Project Photos & Screenshots
All the photos are mentioned in the drive link shared below as well(if they arent visible in the document)

Drive link: [Drive Link of Photos](https://drive.google.com/drive/folders/1Wlrgv0atPEuf65_Yd4VCRVgWh20bxpEw?usp=sharing)
### Your final project, including any casework or interfacing elements that make up the full project (3D prints, screens, buttons, etc)
![alt text](image/Finalproject-casework.png)
### The standalone PCBA, top
![alt text](image/StandalonePCBA-top.png)
### The standalone PCBA, bottom
![alt text](image/StandalonePCBA-Bottom.png)
### Thermal camera images while the board is running under load (you may use your Board Bringup Thermal image here!)
![alt text](image/Load10.png)
![alt text](image/Load50.png)
![alt text](image/Load100.png)
![alt text](image/Load120.png)
### The Altium Board design in 2D view (screenshot)
![alt text](image/pcbdesign-2d-topplane.png)
![alt text](image/pcbdesign-2d-bottomplane.png)
### The Altium Board design in 3D view (screenshot)
![alt text](image/pcbdesign-3d-topplane.png)
![alt text](image/pcbdesign-3d-bottomplane.png)
### Node-RED dashboard (screenshot)
![alt text](image/Nodered-frontend1.png)
![alt text](image/Nodered-frontend2.png)

### Node-RED backend (screenshot)
![alt text](image/Nodered-backend1.png)
![alt text](image/Nodered-backend2.png)
![alt text](image/Nodered-backend3.png)

### Block diagram of your system (You may need to update this to reflect changes throughout the semester.)
![alt text](image/BlockDiagram.png)

### Performance of the PCB under load
| Expected Load|Voltage| 
| ------------ | ----- | 
| 10% (50mA)   | 4.93V | 
| 50% (250mA)  | 4.91V | 
| 100% (500mA) | 4.88V |
| 120% (600mA) | 4.87V |

## 5. Codebase

Do *not* commit any of your source code to this repository. Rather, provide links to the other GitHub repository you've already been using with your firmware.

- A link to your final embedded C firmware codebases
- A link to your Node-RED dashboard code
- Links to any other software required for the functionality of your device