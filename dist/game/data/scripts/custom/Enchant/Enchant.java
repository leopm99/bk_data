package custom.Enchant;

import java.util.logging.Logger;

import l2r.gameserver.model.actor.L2Npc;
import l2r.gameserver.model.actor.instance.L2PcInstance;
import l2r.gameserver.model.itemcontainer.Inventory;
import l2r.gameserver.model.items.instance.L2ItemInstance;
import l2r.gameserver.model.entity.olympiad.OlympiadManager;
import l2r.gameserver.model.quest.Quest;
import l2r.gameserver.model.quest.QuestState;
import l2r.gameserver.network.serverpackets.CharInfo;
import l2r.gameserver.network.serverpackets.ExBrExtraUserInfo;
import l2r.gameserver.network.serverpackets.InventoryUpdate;
import l2r.gameserver.network.serverpackets.UserInfo;

public final class Enchant extends Quest
{
    public static final Logger _log = Logger.getLogger(Enchant.class.getName());

    int npcId = 9994;

    // Item required to enchant armor +1
    int itemRequiredArmor = 22574;
    int itemRequiredArmorCount = 10;

    // Item required to enchant jewels +1
    int itemRequiredJewels = 22574;
    int itemRequiredJewelsCount = 10;

    // Item required to enchant weapon +1
    int itemRequiredWeapon = 22574;
    int itemRequiredWeaponCount = 20;

    // Item required to enchant belt/shirt +1
    int itemRequiredBeltShirt = 22574;
    int itemRequiredBeltShirtCount = 10;

    public Enchant(int questId, String name, String descr)
    {
        super(questId, name, descr);
       
        addStartNpc(npcId);
        addFirstTalkId(npcId);
        addTalkId(npcId);
    }
    
    public static void main(String[] args)
    {
        new Enchant(-1, Enchant.class.getSimpleName(), "custom");
    }
    
    public String onFirstTalk(L2Npc npc, L2PcInstance player)
    {
        String enchantType = "Enchant.htm";

        if (player.getQuestState(getName()) == null)
        {
            newQuestState(player);
        }
        else if (player.isInCombat())
        {
            return drawHtml("You are in combat", "Don't fight if you want to talk with me!", enchantType);
        }
        else if (player.getPvpFlag() == 1)
        {
            return drawHtml("You are flagged", "Don't fight if you want to talk with me!", enchantType);
        }
        else if (player.getKarma() != 0)
        {
            return drawHtml("You are in chaotic state", "Don't fight if you want to talk with me!", enchantType);
        }
        else if (OlympiadManager.getInstance().isRegistered(player))
        {
            return drawHtml("You are registered for Olympiad", "You can't use my services<br1>while playing the Olympiad.", enchantType);
        }

        return "Enchant.htm";
    }

    public String onAdvEvent(String event, L2Npc npc, L2PcInstance player)
    {
        String htmlText = event;

        String enchantType = "Enchant.htm";

        int armorType = -1;

        // Armor parts
        if (event.equals("enchantHelmet"))
        {
            armorType = Inventory.PAPERDOLL_HEAD;
            enchantType = "EnchantArmor.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredArmor, itemRequiredArmorCount);
        }
        else if (event.equals("enchantChest"))
        {
            armorType = Inventory.PAPERDOLL_CHEST;
            enchantType = "EnchantArmor.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredArmor, itemRequiredArmorCount);
        }
        else if (event.equals("enchantLeggings"))
        {
            armorType = Inventory.PAPERDOLL_LEGS;
            enchantType = "EnchantArmor.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredArmor, itemRequiredArmorCount);
        }
        else if (event.equals("enchantGloves"))
        {
            armorType = Inventory.PAPERDOLL_GLOVES;
            enchantType = "EnchantArmor.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredArmor, itemRequiredArmorCount);
        }
        else if (event.equals("enchantBoots"))
        {
            armorType = Inventory.PAPERDOLL_FEET;
            enchantType = "EnchantArmor.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredArmor, itemRequiredArmorCount);
        }
        else if (event.equals("enchantShieldOrSigil"))
        {
            armorType = Inventory.PAPERDOLL_LHAND;
            enchantType = "EnchantArmor.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredArmor, itemRequiredArmorCount);
        }
        // Jewels
        else if (event.equals("enchantUpperEarring"))
        {
            armorType = Inventory.PAPERDOLL_LEAR;
            enchantType = "EnchantJewels.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredJewels, itemRequiredJewelsCount);
        }
        else if (event.equals("enchantLowerEarring"))
        {
            armorType = Inventory.PAPERDOLL_REAR;
            enchantType = "EnchantJewels.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredJewels, itemRequiredJewelsCount);
        }
        else if (event.equals("enchantNecklace"))
        {
            armorType = Inventory.PAPERDOLL_NECK;
            enchantType = "EnchantJewels.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredJewels, itemRequiredJewelsCount);
        }
        else if (event.equals("enchantUpperRing"))
        {
            armorType = Inventory.PAPERDOLL_LFINGER;
            enchantType = "EnchantJewels.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredJewels, itemRequiredJewelsCount);
        }
        else if (event.equals("enchantLowerRing"))
        {
            armorType = Inventory.PAPERDOLL_RFINGER;
            enchantType = "EnchantJewels.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredJewels, itemRequiredJewelsCount);
        }
        // Belt/Shirt
        else if (event.equals("enchantBelt"))
        {
            armorType = Inventory.PAPERDOLL_BELT;
            enchantType = "EnchantBeltShirt.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredBeltShirt, itemRequiredBeltShirtCount);
        }
        else if (event.equals("enchantShirt"))
        {
            armorType = Inventory.PAPERDOLL_UNDER;
            enchantType = "EnchantBeltShirt.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredBeltShirt, itemRequiredBeltShirtCount);
        }
        // Weapon
        else if (event.equals("enchantWeapon"))
        {
            armorType = Inventory.PAPERDOLL_RHAND;
            enchantType = "EnchantWeapon.htm";
            
            htmlText = enchant(enchantType, player, armorType, itemRequiredWeapon, itemRequiredWeaponCount);
        }

        return htmlText;
    }

    private String enchant(String enchantType, L2PcInstance player, int armorType, int itemRequired, int itemRequiredCount)
    {
        QuestState st = player.getQuestState(getName());

        int currentEnchant = 0;
        int newEnchantLevel = 0;

        if (st.getQuestItemsCount(itemRequired) >= itemRequiredCount)
        {
            try
            {
                L2ItemInstance item = getItemToEnchant(player, armorType);

                if (item != null)
                {
                    currentEnchant = item.getEnchantLevel();

                    if ( currentEnchant < 65535 )
                    {
                        newEnchantLevel = setEnchant(player, item, currentEnchant+1, armorType);

                        if ( newEnchantLevel > 0 )
                        {
                            st.takeItems(itemRequired, itemRequiredCount);
                            player.sendMessage("You successfully enchanted your " + item.getItem().getName() +" from +" + currentEnchant + " to +" + newEnchantLevel + "!");

                            String htmlContent = "<center>You successfully enchanted your:<br>"+
                                                    "<font color=\"FF7200\">" + item.getItem().getName() + "</font><br>"+
                                                    "From: <font color=\"AEFF00\">+" + currentEnchant + "</font> to <font color=\"AEFF00\">+" + newEnchantLevel + "</font>"+
                                                "</center>";

                            return drawHtml("Congratulations!", htmlContent, enchantType);
                        }
                    }
                    else
                    {
                        player.sendMessage("Your " + item.getItem().getName() + " is already +65535!");
                        return drawHtml("It's already +65535", "<center>Your <font color=\"FF7200\">" + item.getItem().getName() +"</font> is already +65535!</center>", enchantType);
                    }
                }
            }
            catch (StringIndexOutOfBoundsException e)
            {
                player.sendMessage("Something went wrong. Are equiped with the item?");
                return drawHtml("Error Enchant", "<center>Something went wrong.<br>Are equiped with the item?</center>", enchantType);
            }
            catch (NumberFormatException e)
            {
                player.sendMessage("Something went wrong. Are equiped with the item?");
                return drawHtml("Error Enchant", "<center>Something went wrong.<br>Are equiped with the item?</center>", enchantType);
            }


            player.sendMessage("Something went wrong. Are equiped with the item?");
            return drawHtml("Error Enchant", "<center>Something went wrong.<br>Are equiped with the item?</center>", enchantType);
        }
        else
        {
            String content = "<center>"+
                                "Not enough <font color=\"FF7200\">Golden Coin Event</font>!<br>";

                    if ( st.getQuestItemsCount(itemRequired) > 0 )
                    {
                        content += "You have " + st.getQuestItemsCount(itemRequired) + " Golden Coin Event,<br1>"+
                                    "Need " + (itemRequiredCount - st.getQuestItemsCount(itemRequired)) + " more.";
                    }
                    else
                    {
                        content += "You need <font color=\"FF7200\">" + itemRequiredCount + " Golden Coin Event</font>!";
                    }

                    content += "</center>";

            return drawHtml("Not Enough Items", content, enchantType);
        }
    }

    private L2ItemInstance getItemToEnchant(L2PcInstance player, int armorType)
    {
        L2ItemInstance itemInstance = null;
        L2ItemInstance parmorInstance = player.getInventory().getPaperdollItem(armorType);

        if ((parmorInstance != null) && (parmorInstance.getLocationSlot() == armorType))
        {
            itemInstance = parmorInstance;

            if (itemInstance != null)
            {
                return itemInstance;
            }
        }

        return null;
    }

    private int setEnchant(L2PcInstance player, L2ItemInstance item, int newEnchantLevel, int armorType)
    {
        if (item != null)
        {
            // set enchant value
            player.getInventory().unEquipItemInSlot(armorType);
            item.setEnchantLevel(newEnchantLevel);
            player.getInventory().equipItem(item);
            
            // send packets
            InventoryUpdate iu = new InventoryUpdate();
            iu.addModifiedItem(item);
            player.sendPacket(iu);
            player.broadcastPacket(new CharInfo(player));
            player.sendPacket(new UserInfo(player));
            player.broadcastPacket(new ExBrExtraUserInfo(player));

            return newEnchantLevel;
        }

        return -1;
    }

    public String drawHtml(String title, String content, String enchantType)
    {
        String html = "<html>"+
                        "<title>Enchant Manager</title>"+
                        "<body>"+
                            "<center><img src=\"L2UI_CH3.herotower_deco\" width=256 height=32><br>"+
                            "<font color=\"FF9900\">" + title + "</font></center><br>"+
                            content +
                            "<br><br>"+
                            "<center><a action=\"bypass -h Quest Enchant " + enchantType + "\">Go Back</a></center>"+
                        "</body>"+
                        "</html>";

        return html;
    }
}