--
-- Update all your git repositories in one go
--
do shell script "find ~ -type d -name .git | xargs -I {} dirname {} | sort | while read line; do echo \"${line}\" && cd \"${line}\" && git pull; done"