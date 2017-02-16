# Roadtrippers-specific git aliases
alias gitvnp='gitvp rt-next_master '

# Roadtrippers-specific git functions
gitvnbd () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <feature-branch>"
     return 1
  fi
  gitvbd rt-next_master $1
}

gitvnob () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <feature-branch>"
     return 1
  fi
  gitvnp && gitob $1
}

# Roadtrippers-specific vagrant/docker aliases and functions
alias rtstart='$RT_REPO_PATH/rtdev startallsvc && $RT_REPO_PATH/rtdev runapp'
alias rtstart2='./rtdev startallsvc && ./rtdev runapp'
alias rtstartapp2='docker start -ai app2'
alias rtsync='vagrant rsync'

# El Capitan workaround to fix vagrant - not 100% clear on root cause.
alias vagrant='/opt/vagrant/bin/vagrant'

# Web page shortcuts
alias apidocs='open https://github.com/roadtrippers/documentation/blob/master/Documentation/API/API.md'
alias backbone='open https://cdn.rawgit.com/jashkenas/backbone/1.0.0/index.html'
alias circle='open https://circleci.com/gh/roadtrippers/roadtrippers'
alias engineyard='open https://cloud.engineyard.com/accounts/13414/apps'
alias gmail='open https://mail.google.com/mail/u/0/#inbox'
google () {
  if [ $# -ne 1 ]
   then
     echo "Usage: $FUNCNAME <search-query>"
     return 1
  fi
  open "https://www.google.com/search?q=$1"
}
alias github='open https://github.com/roadtrippers/roadtrippers'
alias myissues='open https://github.com/roadtrippers/roadtrippers/issues?q=is%3Aopen+assignee%3Aajfickas'
alias mypulls='open https://github.com/roadtrippers/roadtrippers/pulls/ajfickas'
alias react='open https://facebook.github.io/react/docs/getting-started.html'
alias rtdev='open http://roadtrippers.dev:3000'
alias rtdevjasmine='open http://roadtrippers.dev:3000/specs'
alias rtabsinthe='open https://roadtrippers.com'
alias rtbourbon='open https://bourbon.roadtrippersdev.com'
alias rtcoffee='open https://coffee.roadtrippersdev.com'
alias rtprod='open https://roadtrippers.com'
alias tmuxcheat='open http://tmuxcheatsheet.com/'
alias underscore='open https://cdn.rawgit.com/jashkenas/underscore/1.4.4/index.html'
# Deprecated
alias pivotal='open https://www.pivotaltracker.com/n/workspaces/499830'
