[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Y5lYn2wb)

# A11G Final Submission

**Team Number:** 20  
**Team Name:** AmbientRx  
**GitHub Repository URL:** https://github.com/ese5160/a11g-final-submission-s26-s26-t20-ambientrx.git

| Team Member Name | Email Address | GitHub Handle |
| --- | --- | --- |
| Ananya Shivarama Bhat | ananya9@seas.upenn.edu | ananya9-cyber |
| Anushka Jain | anushkaj@seas.upenn.edu | anushkaj |

---

## 1. Video Presentation

[Video Presentation Link](https://youtu.be/t0KlJewe77s)

---

## 2. Project Summary

### Device Description

<p align="justify">
AmbientRx is a smart ambient medicine storage box that monitors temperature, humidity, light exposure, and pill count inside the enclosure, while regulating internal climate via a fan and humidifier. It connects to the cloud over Wi-Fi and exposes a Node-RED dashboard so caregivers can remotely view conditions, get refill alerts, and intervene when storage conditions drift outside safe ranges.
</p>

### Inspiration and Problem

<p align="justify">
Many medications are sensitive to heat, humidity, and light, yet they sit in bathroom cabinets or kitchen counters where conditions vary widely throughout the day. Caregivers managing medications for elderly relatives or chronic patients have no visibility into whether storage conditions are actually safe, or whether refills are needed before the bottle runs out. AmbientRx solves this by turning a passive storage box into an active, networked guardian that both monitors and corrects the storage environment, and gives a remote view to a caregiver who may not be physically present.
</p>

### Internet Augmentation

<p align="justify">
The Internet connection transforms AmbientRx from a local sensor box into a remote care tool. Sensor telemetry is published over MQTT to a broker on an Azure VM and visualized on a Node-RED dashboard, so a caregiver anywhere in the world can see live temperature, humidity, light, and pill count. Control flows the other way too: dashboard toggles publish back to the device to actuate the fan and humidifier on demand. Firmware updates are delivered over the air via HTTP, so the device can be patched without physical access.
</p>

### Device Functionality

<p align="justify">
The system is built around a custom 4-layer 60mm × 60mm mixed-signal PCB carrying the Silicon Labs SiWx917 ARM Cortex-M4 Wi-Fi SoC. Sensing is handled by a Sensirion SHT41/SHT45 (temperature and humidity, I2C), a VEML7700 (ambient light, I2C), and an ArduCam OV2640 camera node running classical CV blob detection in HSV space for pill counting on a second SiWx917 dev board. Actuation is handled by a low-side N-channel MOSFET fan driver and a humidifier control line. Power is managed by a TI BQ24075 charger with a TPS62081 buck regulator generating the 3.3 V rail and a TPS61032 boost converter generating the 5 V rail for actuators and peripherals. Firmware runs FreeRTOS with separate tasks for sensing, MQTT publish/subscribe, actuator control, and OTA, communicating over queues and semaphores. The cloud side runs Mosquitto and Node-RED on an Azure VM, with a Dashboard 2.0 UI for the caregiver.
</p>

### Challenges

<p align="justify">
<b>Recurring "Error 102" bricked state.</b> The MCU intermittently dropped into a timed-out, bricked state during development with no clear trigger. Recovery required a J-Link mass-erase and reflash each time. We never fully root-caused it but learned to recognize the symptom early and recover quickly rather than burn hours debugging downstream effects.
</p>

<p align="justify">
<b>I2C pin remapping.</b> The SiWx917 datasheet lists pins 54 and 55 as valid I2C pins, but they did not work in practice on our board. We had to reroute the I2C bus to pins 6 and 7, which involved both firmware reconfiguration and bodge wiring on the PCB. This was the most painful kind of bug: the datasheet says one thing, the silicon does another, and the only way through is to try alternates and confirm with a logic analyzer.
</p>

<p align="justify">
<b>Camera I2C voltage incompatibility.</b> The ArduCam OV2640 ships with onboard pull-ups that tie SDA and SCL to 5 V. Our SHT45 and VEML7700 on the same I2C bus are 3.3 V parts and cannot tolerate being pulled to 5 V. This forced us to move the camera to a separate SiWx917 dev board on its own I2C segment rather than sharing the bus with the sensor cluster, which then drove the two-board architecture.
</p>

<p align="justify">
<b>Faulty boost IC.</b> On one assembled board the 5 V boost rail refused to come up under any load, while an identical second board worked. Replacing the boost IC on the bad board restored full functionality, which pointed to a faulty part rather than a layout or design issue. The lesson: always populate and bring up at least two boards in parallel so you can distinguish design defects from part-level defects.
</p>

<p align="justify">
<b>Camera CV algorithm tradeoffs.</b> Classical CV blob detection in HSV space was already pushing the memory and compute budget on the SiWx917 (QQVGA frames, TJpgDec decode, HSV conversion, blob labeling), yet it still struggled with accuracy under varied pill colors and lighting. We could not move to a heavier ML approach because the MCU was already saturated, and we could not get cleaner classical results without more compute. This is the clearest case in the project where the next iteration needs a different architecture rather than a tuning pass.
</p>

<p align="justify">
<b>Fan driver topology.</b> The original high-side fan switch did not pull the gate hard enough to fully turn on the MOSFET, so the fan ran weakly and inconsistently. Reworking to a low-side AO3400A N-channel topology fixed the drive strength and gave clean on/off behavior.
</p>

<p align="justify">
<b>SDK churn and firmware recovery.</b> WiseConnect SDK differences between 3.5.2 and 4.0.0 caused silent failures from incorrect feature bit maps, renamed APIs, and changed join callback signatures. One bring-up session left a board bricked after a flashing failure, recovered using J-Link mass-erase. CMSIS-RTOS2 threading patterns required careful study to avoid stack and priority misconfigurations.
</p>

<p align="justify">
<b>OTA and MQTT integration.</b> Getting <code>sl_si91x_http_otaf</code> to fetch and apply firmware images from blob storage required iterating on chunk handling and post-update reboot behavior. MQTT setup needed a Wi-Fi-up event group so the MQTT task did not race ahead of network association.
</p>

<p align="justify">
<b>How they were overcome:</b> methodical scope, multimeter, and logic analyzer probing for hardware; SDK release notes and example projects for firmware; comparing two assembled boards side-by-side to isolate part-level defects; and accepting PCB rework as a first-class debug strategy rather than working around root causes.
</p>

### Prototype Learnings

<p align="justify">
The biggest lesson was that <b>integration cost dwarfs component cost</b>. Each subsystem worked in isolation long before the full system worked end-to-end, and most of the actual time was spent on the seams: Wi-Fi to MQTT handoff, sensor task to publish queue, OTA to reboot to reconnect, camera bus voltage versus sensor bus voltage. The second lesson was that <b>datasheets lie, and silicon is the source of truth</b>: the I2C pin remap, the bricked-state issue, and the faulty boost IC all required physical-layer debugging that no amount of code review would have caught.
</p>

<p align="justify">
If we built this again, we would: freeze the SDK version on day one, write a small board-support shim layer so application code does not depend on SDK-specific symbols, plan the I2C topology around voltage domains from the schematic stage rather than discovering the conflict at bring-up, populate at least two boards from the first PCB run so part-level defects are obvious, and add test points on every actuator gate, every rail, and every I2C segment from the first revision rather than adding them in rework.
</p>

### Next Steps and Takeaways

<p align="justify">
To finish or improve this project: move pill counting off the MCU entirely by either streaming compressed frames to a small edge inference service or upgrading to an SoC with an NPU, since the current SiWx917 is already saturated and the classical CV approach has hit its accuracy ceiling; add a level-shifted I2C bridge so the camera can sit on the main board without dragging the sensor bus to 5 V; add a sealed enclosure with a proper desiccant chamber so the humidifier has something meaningful to fight against; move from username/password MQTT to TLS with client certificates; and add persistent local logging on a microSD so the device tolerates Wi-Fi outages without losing data.
</p>

<p align="justify">
What ESE5160 taught: the full stack of edge IoT, from schematic capture through PCB layout, board bring-up, RTOS firmware, network protocols, cloud broker setup, and dashboard UX. More importantly, the discipline of going from a vague product idea to a working physical artifact through written requirements, scoped milestones, and honest validation testing, and the humility of letting bench measurements override what the datasheet says.
</p>

### Project Links

- **Node-RED dashboard:** [http://20.110.157.53:1880/dashboard/a08g-color](http://20.110.157.53:1880/dashboard/a08g-color)
- **Altium 365 share link:** [AmbientRx PCB design](https://upenn-eselabs.365.altium.com/designs/3506AE2D-F326-4D9F-B4A0-18F05DBD5EB6#design)
- **YouTube demo:** [Video demo](https://youtu.be/t0KlJewe77s)

---

## 3. Hardware and Software Requirements Review

<p align="justify">
The HRS and SRS below are reproduced from our A08G submission. Each row is annotated with whether the requirement was <b>Met</b>, <b>Partially Met</b>, or <b>Not Met</b> in the final prototype, along with a short note on how it was tested. Two requirements (HRS-16 and SRS-19) have been rewritten to reflect the final design, in which the only physical buttons on the PCB are ISP and reset (used for programming and recovery, not serviced in firmware) and the OTA firmware update is triggered from a button on the Node-RED dashboard.
</p>

### Hardware Requirements Specification (HRS)

| ID | Description | Status | Validation Notes |
|:---|:---|:---|:---|
| HRS-01 | The system shall be based on the SIWG917Y121MGABA microcontroller with integrated Wi-Fi capability and ARM Cortex-M4 core running at 180 MHz | **Met** | Confirmed via Simplicity Studio device ID readout and successful firmware execution at the configured clock |
| HRS-02 | The system shall operate from a single-cell 3.7 to 4.2 V Li-Ion battery. The battery capacity shall be sufficient to power the system for at least 8 hours of continuous operation without USB power | **Partially Met** | Battery operation confirmed, but full 8-hour endurance run was not formally measured. Short-duration runs (~1 hr) operated cleanly off battery |
| HRS-03 | The system shall use the TI BQ24075 power path IC to manage charging from USB (5 V, 500 mA max) and automatic switchover to battery with zero dropout and no system reset | **Met** | Verified by hot-unplugging USB while board was running; MCU continued executing without reset, observed on serial console |
| HRS-04 | The system shall include a buck converter to generate a stable 3.3 V supply with less than 50 mV ripple for the MCU and digital sensors | **Met** | TPS62081 buck output measured on oscilloscope under load; ripple within 50 mV |
| HRS-05 | The system shall include a boost or buck-boost converter to generate a 5 V rail with less than 100 mV ripple for actuators and peripherals | **Partially Met** | TPS61032 boost works on the functional board within ripple spec; one assembled board had a faulty boost IC that required replacement before the rail came up |
| HRS-06 | The system shall include the Sensirion SHT45 digital temperature and humidity sensor. The sensor shall measure temperature with +/-0.2 degrees C typical accuracy over a range of 0 to 70 degrees C, and relative humidity with +/-1.8% typical accuracy over a range of 0 to 100% RH | **Met** | Temperature cross-checked against a reference thermometer; readings within datasheet tolerance |
| HRS-07 | The SHT45 shall communicate with the MCU over I2C at 400 kHz (fast mode) and shall be addressed at its default I2C address of 0x44 | **Met** | I2C bus scanned with logic analyzer; SHT45 ACKs at 0x44 at 400 kHz. Note: bus had to be rerouted from datasheet-listed pins 54/55 to pins 6/7 after the original assignment did not function on silicon |
| HRS-08 | The system shall include a VEML ambient light sensor to detect light exposure levels within the enclosure. The VEML sensor shall communicate with the MCU over I2C at 400 kHz and shall detect light presence within 100 ms | **Met** | VEML7700 responds on shared I2C bus; light-step response observed well under 100 ms on logic analyzer |
| HRS-09 | The system shall include a 2 MP ArduCam camera module capable of capturing images at a minimum resolution of 1080p. The camera shall interface with the MCU via SPI at a minimum clock frequency of 8 MHz | **Partially Met** | ArduCam OV2640 integrated and capturing, but on a separate SiWx917 dev board rather than the main PCB, because the camera's onboard 5 V I2C pull-ups were incompatible with the 3.3 V sensor bus. Capture resolution reduced to QQVGA to fit RAM budget for on-device CV |
| HRS-10 | The camera shall only capture images on a triggered event to minimize power consumption and processing overhead | **Met** | Capture is triggered on schedule/event from the camera task; no continuous streaming |
| HRS-11 | The system shall include a white LED light source to illuminate the interior of the pill compartment at the time of image capture. The LED shall be controllable via a GPIO output and shall only be active during the image capture window | **Met** | LED controlled via GPIO; on/off timing aligned with capture window |
| HRS-12 | The system shall include a fan actuator capable of increasing internal air circulation for temperature regulation. The fan shall be rated for 5 V operation and controlled via PWM signal with a frequency of at least 25 kHz | **Met** | 5 V fan installed and controlled by PWM at the specified frequency |
| HRS-13 | The fan shall be driven by a dedicated motor driver circuit capable of handling at least 500 mA continuous current. The driver shall be controlled via PWM and GPIO signals from the MCU | **Met** | Reworked from original high-side topology to a low-side AO3400A N-channel MOSFET, which gave proper gate drive and clean PWM control |
| HRS-14 | The system shall include a humidity control system consisting of a piezoelectric vibrator and a water reservoir. The piezo vibrator shall generate ultrasonic vibrations to atomize water from the reservoir, increasing internal humidity. The actuator shall be electrically controllable by the MCU using a GPIO or PWM signal | **Met** | Piezo atomizer wired and controlled via GPIO; observed mist generation when activated |
| HRS-15 | The piezo vibrator shall be driven by a dedicated driver circuit capable of operating at the vibrator's rated frequency and voltage, isolated from the MCU logic to prevent back-EMF damage | **Met** | Driver circuit isolates the MCU from the piezo load |
| HRS-16 | The system shall provide an OTA firmware update trigger via a button on the Node-RED dashboard, and shall include physical ISP and reset buttons on the PCB for programming and recovery. No additional general-purpose user input buttons are required on the device itself | **Met** | Node-RED OTA button verified to trigger firmware update via MQTT. ISP and reset buttons on board used during programming and brick-state recovery |
| HRS-17 | The system shall include onboard charge status monitoring via GPIO interrupt from the BQ24075 CHG and PG pins, without polling | **Not Met** | The BQ24075 CHG and PG pins were routed to status indicator LEDs on the PCB, not to MCU GPIOs. The MCU therefore cannot detect charge-state changes via interrupt. Routing CHG/PG to MCU GPIOs would be a Rev 2 change |
| HRS-18 | The fan and piezo actuators shall be electrically isolated from the MCU logic using appropriate driver circuitry to prevent back-EMF damage | **Met** | Both actuators driven through dedicated driver stages |
| HRS-19 | The PCB shall fit within a 60 mm x 60 mm footprint using a 4-layer stackup with Layer 1 as signal (top), Layer 2 as GND plane, Layer 3 as power plane, and Layer 4 as signal (bottom) | **Met** | Final PCB confirmed at 60 x 60 mm, 4-layer stackup as specified |
| HRS-20 | The system shall include onboard voltage regulation circuitry to support all required operating voltages from the single-cell Li-Ion battery | **Met** | 3.3 V buck and 5 V boost both generated from the battery rail |

### Software Requirements Specification (SRS)

| ID | Description | Status | Validation Notes |
|:---|:---|:---|:---|
| SRS-01 | The firmware shall run on FreeRTOS with at least four concurrent tasks: a sensor task, a camera/ML task, an MQTT task, and a control task. Each task shall be assigned a distinct priority level | **Met** | All four tasks instantiated with distinct priorities; verified in the FreeRTOS task list |
| SRS-02 | The system shall sample temperature, humidity, and light sensor data from the SHT45 and VEML sensors at least once every 30 seconds. Sensor reads shall be performed by the sensor task on a periodic timer and shall not block any other task | **Met** | Periodic sensor reads observed on dashboard; non-blocking I2C reads keep other tasks running |
| SRS-03 | The system shall compare measured environmental conditions against predefined medication-specific acceptable ranges after every sensor read cycle | **Met** | Threshold comparison runs every read cycle in the sensor task |
| SRS-04 | When temperature exceeds the allowable upper limit, the firmware shall activate the fan actuator within 5 seconds of detection via a command passed to the control task | **Met** | Verified by warming the box with a heat source; fan engaged within the window |
| SRS-05 | When humidity falls below the allowable lower limit, the firmware shall activate the piezo vibrator humidifier within 5 seconds of detection. The humidifier shall be deactivated once humidity returns within acceptable range | **Met** | Verified by drying the enclosure; humidifier engaged and disengaged at threshold crossings |
| SRS-06 | When the VEML light sensor detects light levels inside the enclosure exceeding acceptable limits continuously for more than 60 seconds, the firmware shall publish a light alert to the MQTT broker | **Met** | Verified by holding the lid open; light alert published to `ambrx/light/alert` after the timeout |
| SRS-07 | If environmental conditions remain outside acceptable ranges beyond the corrective capability of the actuators, the system shall publish a Wi-Fi notification to Node-RED within 10 seconds for caregiver intervention | **Met** | Forced sustained breach during testing; caregiver alert appeared on dashboard within the window |
| SRS-08 | The firmware shall activate the interior LED light source immediately before triggering an ArduCam image capture, and shall deactivate it immediately after capture is complete to minimize power usage | **Met** | LED on/off timing aligned with capture window |
| SRS-09 | The firmware shall trigger an ArduCam image capture on a scheduled interval of no more than every 60 seconds, or immediately upon detection of a medication removal event | **Met** | Scheduled captures observed at the configured interval |
| SRS-10 | The camera/ML task shall process the captured 2 MP image using an onboard ML inference model to count the number of pills remaining and shall complete inference within 2 seconds of image capture | **Partially Met** | Pill counting was implemented as classical HSV blob detection rather than ML inference, due to MCU compute and memory constraints. Inference completes within the 2-second budget but accuracy is sensitive to pill color and lighting |
| SRS-11 | The firmware shall update the internal pill count state after each ML inference result and pass the updated count to the MQTT task via a FreeRTOS queue | **Met** | Pill count flows from CV task to MQTT task via FreeRTOS queue |
| SRS-12 | The firmware shall notify the caregiver via MQTT when the pill count falls below a predefined threshold (default: 5 pills remaining) | **Met** | Restock alert published on threshold crossing and visible in Node-RED |
| SRS-13 | The firmware shall publish all sensor data (temperature, humidity, light level, pill count) to the MQTT broker. Each published message shall reach the broker within 100 ms of the sensor read completing | **Partially Met** | MQTT publishes were observed to be reliable and the Node-RED dashboard updated promptly after each sensor read, suggesting sub-second end-to-end latency. The strict <100 ms publish-to-broker latency was not formally instrumented or measured |
| SRS-14 | The firmware shall subscribe to the `ambrx/cooling/control` MQTT topic and actuate the fan within 1 second of receiving a command from Node-RED | **Met** | Toggling the dashboard switch produced fan response within the window in repeated tests |
| SRS-15 | Environmental regulation actions (fan, piezo humidifier) shall not interrupt or block normal sensor monitoring, ML inference, or MQTT communication tasks | **Met** | Tasks observed running concurrently during actuation; no missed sensor reads or publishes |
| SRS-16 | All inter-task communication shall use FreeRTOS queues and semaphores exclusively. No shared global variables shall be used between tasks | **Met** | Codebase uses queues, semaphores, and event groups for all inter-task communication |
| SRS-17 | Battery charge status changes shall be handled via GPIO interrupt from the BQ24075 CHG pin. No polling of charge status shall be performed | **Not Met** | Charge-status interrupt handling is not implemented because the BQ24075 CHG and PG pins are routed to indicator LEDs, not to MCU GPIOs (see HRS-17). Firmware support is contingent on the Rev 2 hardware change |
| SRS-18 | The firmware shall maintain Wi-Fi connectivity and shall automatically attempt reconnection with exponential backoff if the connection is lost, with a maximum retry interval of 30 seconds | **Partially Met** | Automatic Wi-Fi reconnect is invoked on link loss and succeeds in most cases, but reconnection is not 100% reliable and occasionally requires a manual power cycle. Exponential backoff with a 30-second cap was not formally implemented or tuned |
| SRS-19 | The firmware shall handle OTA firmware update commands received via MQTT from the Node-RED dashboard. The OTA trigger shall be acknowledged by the MQTT task and dispatched to the OTA handler within 1 second of message receipt | **Met** | Verified end-to-end by clicking the Node-RED OTA button; firmware fetched the new image from Azure blob storage, flashed, and rebooted into the new image |
| SRS-20 | The system shall log all alert events (temperature breach, humidity breach, light alert, low pill count) with a timestamp and publish them to the MQTT broker for caregiver visibility on the Node-RED dashboard | **Partially Met** | Alert events publish reliably to the MQTT broker and appear on the Node-RED dashboard. MCU-side payloads do not embed a timestamp; Node-RED records the receive-time on the dashboard, which is sufficient for caregiver visibility but does not capture the true on-device event time |

### Summary

| Category | Total | Met | Partially Met | Not Met |
|:---|:---:|:---:|:---:|:---:|
| HRS | 20 | 16 | 3 | 1 |
| SRS | 20 | 14 | 5 | 1 |
| **Total** | **40** | **30** | **8** | **2** |

<p align="justify">
Of 40 total requirements, 30 (75%) were fully met, 8 (20%) were partially met, and 2 (5%) were not met. The two unmet requirements (HRS-17 and SRS-17) are tightly coupled: the BQ24075 charge-status pins were routed to LEDs rather than MCU GPIOs, blocking firmware-side charge monitoring. Both would be resolved by a single Rev 2 hardware change. The partially met items are honest reflections of where formal validation testing fell short of the original requirement metrics, rather than functional gaps in the prototype.
</p>

---

## 4. Project Photos and Screenshots

All photos are also available in the Drive folder linked below in case any image fails to render in the README.

**Drive link:** [Photos folder](https://drive.google.com/drive/folders/1Wlrgv0atPEuf65_Yd4VCRVgWh20bxpEw?usp=sharing)

### Final project, including casework and interfacing elements

![Final assembled project with casework](image/3d_case4.jpeg)

### Standalone PCBA, top

![PCBA top side](image/StandalonePCBA-top.png)

### Standalone PCBA, bottom

![PCBA bottom side](image/StandalonePCBA-Bottom.png)

### Thermal camera images while the board is running under load

| 10% load (~50 mA) | 50% load (~250 mA) |
| :---: | :---: |
| ![Thermal at 10% load](image/Load10.png) | ![Thermal at 50% load](image/Load50.png) |
| **100% load (~500 mA)** | **120% load (~600 mA)** |
| ![Thermal at 100% load](image/Load100.png) | ![Thermal at 120% load](image/Load120.png) |

### Altium board design, 2D view

| Top plane | Bottom plane |
| :---: | :---: |
| ![PCB 2D top](image/pcbdesign-2d-topplane.png) | ![PCB 2D bottom](image/pcbdesign-2d-bottomplane.png) |

### Altium board design, 3D view

| Top plane | Bottom plane |
| :---: | :---: |
| ![PCB 3D top](image/pcbdesign-3d-topplane.png) | ![PCB 3D bottom](image/pcbdesign-3d-bottomplane.png) |

### Node-RED dashboard

![Node-RED dashboard view 1](image/Nodered-frontend1.png)

![Node-RED dashboard view 2](image/Nodered-frontend2.png)

### Node-RED backend

![Node-RED flow 1](image/Nodered-backend1.png)

![Node-RED flow 2](image/Nodered-backend2.png)

![Node-RED flow 3](image/Nodered-backend3.png)

### System block diagram

![System block diagram](image/BlockDiagram.png)

### Performance of the PCB under load

The 5 V rail was measured under representative load conditions to confirm regulator stability across the device's operating envelope.

| Expected Load | Current | Voltage |
| :--- | :---: | :---: |
| 10% | 50 mA | 4.93 V |
| 50% | 250 mA | 4.91 V |
| 100% | 500 mA | 4.88 V |
| 120% | 600 mA | 4.87 V |

<p align="justify">
The TPS61032 boost rail held within 60 mV across the full sweep from 10% to 120% of nominal load, comfortably within the 100 mV ripple budget called out in HRS-05 and showing graceful behavior even when overloaded by 20% beyond the rated continuous design point.
</p>

---

### Casework, 3D rendered views

<p align="justify">
The enclosure was modeled in CAD to host the PCBA, the camera node, the fan, and the piezo humidifier reservoir, with cutouts for USB-C charging access and the front status LEDs. The four views below show the assembled casework from multiple angles.
</p>

| View 1 | View 2 |
| :---: | :---: |
| ![3D casework view 1](image/3d_case1.jpeg) | ![3D casework view 2](image/3d_case2.jpeg) |
| **View 3** | **View 4** |
| ![3D casework view 3](image/3d_case3.jpeg) | ![3D casework view 4](image/3d_case4.jpeg) |

## 5. Codebase

<p align="justify">
Per the assignment instructions, source code is not committed to this submission repository. The links below point to the GitHub repositories that hold the firmware, the Node-RED flow, and any auxiliary tooling used in the project.
</p>

- **Embedded C firmware (main board, sensor + MQTT + OTA):** [codebase1](https://github.com/ese5160/final-project-firmware-s26-t20-ambientrx/tree/main/codebase1_custom_pcb)
- **Embedded C firmware (camera node, ArduCam + pill counter):** [codebase2](https://github.com/ese5160/final-project-firmware-s26-t20-ambientrx/tree/main/codebase2_dev_board_arducam)
- **Node-RED dashboard flow JSON:** [Final Json Flow](https://github.com/ese5160/final-project-firmware-s26-t20-ambientrx/blob/main/Final_Node_Red.json)
- **Altium 365 PCB project:** [Altium share link](https://upenn-eselabs.365.altium.com/designs/3506AE2D-F326-4D9F-B4A0-18F05DBD5EB6#design)
- **Dashboard:** [Dashboard Link](http://20.110.157.53:1880/dashboard/a08g-color)
- **NODE-RED Flow** [Flow](http://20.110.157.53:1880/#flow/e5597df59e04756c)

### Open-Source Components Used

- **FreeRTOS** (kernel) and **CMSIS-RTOS2** (wrapper API), via the Silicon Labs WiseConnect SDK.
- **TJpgDec** by ChaN, used on the camera node for in-place JPEG decode within the SiWx917's RAM budget. Used under its permissive license; original source preserved in the firmware repo.
- **Silicon Labs WiseConnect SDK** for Wi-Fi, MQTT client, and HTTP OTA (`sl_si91x_http_otaf`) functionality.
- **Mosquitto** broker and **Node-RED** with Dashboard 2.0 nodes for the cloud side.

All third-party code is referenced and used in accordance with its respective license. No portions of any third-party codebase were redistributed beyond what their licenses permit.
