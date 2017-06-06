local function run_bash(str)
    local cmd = io.popen(str)
    local result = cmd:read('*all')
    return result
end
local function run(msg, matches)
	if matches[1] == "clear cache" and is_sudo(msg) then
		run_bash("rm -rf ~/.telegram-cli/data/sticker/*")
		run_bash("rm -rf ~/.telegram-cli/data/photo/*")
		run_bash("rm -rf ~/.telegram-cli/data/animation/*")
		run_bash("rm -rf ~/.telegram-cli/data/video/*")
		run_bash("rm -rf ~/.telegram-cli/data/audio/*")
		run_bash("rm -rf ~/.telegram-cli/data/voice/*")
		run_bash("rm -rf ~/.telegram-cli/data/temp/*")
		run_bash("rm -rf ~/.telegram-cli/data/thumb/*")
		run_bash("rm -rf ~/.telegram-cli/data/document/*")
		run_bash("rm -rf ~/.telegram-cli/data/profile_photo/*")
		run_bash("rm -rf ~/.telegram-cli/data/encrypted/*")
    return "*AƖƖ Ƈαcнє Hαѕ Ɓєєη ƇƖєαяєɗ*"
   end
return {
  description = "ClearCache", 
  usage = {
      sudo = {
          "!clear cache.",
          },
          },
  patterns = {
    "^[!/#]clear cache$",
	"^clear cache$",
    },
  run = run
}

end