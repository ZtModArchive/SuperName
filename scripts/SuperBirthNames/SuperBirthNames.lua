include "modules/ZtModArchive/ArluqTools/scripts/arluq.lua"

function born (args)
    aq.try(
        function ()
            local newborn = resolveTable(args[1].value)
            local name = aq.animal.getName(newborn)

            if aq.animal.getSuper(newborn) then
                aq.animal.setName(newborn, "Super "..name)
            end

            aq.animal.setLifespan(newborn, 1)
        end
    )
end