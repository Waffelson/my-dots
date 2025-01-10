if status is-interactive
    # Commands to run in interactive sessions can go here
function fish_greeting
    if set -q fish_greeting
        test -n "$fish_greeting"
        and echo $fish_greeting
        return
    end
    # do the other stuff if $fish_greeting isn't set
end

   

starship init fish | source

end


