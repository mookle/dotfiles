# Save history before cmd execution
function save_history --on-event fish_preexec
    history --save
end
