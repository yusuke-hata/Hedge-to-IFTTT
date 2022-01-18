-- README: 
-- This script receives a Hedge FilyCopyCompleted event and sends it to a IFTTT webhook

-- Hedge vars:
set FileCopyCompleted_bytesCopied to "FileCopyCompleted_bytesCopied: {FileCopyCompleted_bytesCopied}"
set FileCopyCompleted_destinationPath to "FileCopyCompleted_destinationPath: {FileCopyCompleted_destinationPath}"
set FileCopyCompleted_duration to "FileCopyCompleted_duration: {FileCopyCompleted_duration}"
set FileCopyCompleted_sourcePaths to "FileCopyCompleted_sourcePaths: {FileCopyCompleted_sourcePaths}"
set FileCopyCompleted_startedAt to "FileCopyCompleted_startedAt: {FileCopyCompleted_startedAt}"
set FileCopyCompleted_state to "FileCopyCompleted_state: {FileCopyCompleted_state}"

set theEvent to FileCopyCompleted_sourcePaths & ",
" & FileCopyCompleted_destinationPath & ",
" & FileCopyCompleted_bytesCopied & ",
" & FileCopyCompleted_duration & ",
" & FileCopyCompleted_startedAt & ",
" & FileCopyCompleted_state
set theText to "```" & theEvent & "```"

set theCMD to "curl -X POST https://maker.ifttt.com/trigger/Hedge_FileCopyCompleted/with/key/your_key"

-- Push to Slack
do shell script theCMD
