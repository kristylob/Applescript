--
-- Update all your git repositories in one go
--
do shell script "find ~/ -type d -name .git | xargs -n 1 dirname | sort | while read line; do echo $line && cd $line && git pull; done"