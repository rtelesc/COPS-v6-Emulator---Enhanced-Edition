--
-- ------ COPS v6 Emulator - Closed Source ------
-- Copyright (C) 2014 - 2015 Jean-Philippe Boivin
--
-- Generated from official database (cq_4351@192.168.1.114)
-- the 5/21/2015 1:36:20 PM.
--
-- Please read the WARNING, DISCLAIMER and PATENTS
-- sections in the LICENSE file.
--

function useItem725010(self, client)
    name = "ScentSword"
    face = 1

    if hasSkill(client, 420, 5) then

        if hasMagic(client, 1046, -1) then

            text(client, "You have learned Scent Sword.")
            link(client, "I see.", 255)
            pic(client, 3)
            create(client)

        else

            awardMagic(client, 1046, 0)
            text(client, "You have learned Scent Sword.")
            link(client, "I see.", 255)
            pic(client, 3)
            create(client)
            deleteItem(self)

        end

    else

        text(client, "Sorry, you cannot learn this skill before you practice your sword to level 5. Please train harder.")
        link(client, "I see.", 255)
        pic(client, 3)
        create(client)

    end

end