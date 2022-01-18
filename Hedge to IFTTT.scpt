-- README: 
-- This script receives a Hedge FileCopyCompleted event and sends it to a IFTTT webhook
-- Obtain your IFTTT webhook key and ensure overwriting {your_key} section
-- And ensure input "Hedge_FileCopyCompleted" as event name on your IFTTT webhook setting.

-- Hedge vars:
set FileCopyCompleted_state to "FileCopyCompleted_state: {FileCopyCompleted_state}"

set theEvent to FileCopyCompleted_state
set theText to "```" & theEvent & "```"

set theCMD to "curl -X POST https://maker.ifttt.com/trigger/Hedge_FileCopyCompleted/with/key/{your_key}"

-- Push to IFTTT 
do shell script theCMD
