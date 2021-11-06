/*
 * Copyright (C) 2004-2013 L2J DataPack
 * 
 * This file is part of L2J DataPack.
 * 
 * L2J DataPack is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * L2J DataPack is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package ai.npc.ForgeOfTheGods;

import l2r.gameserver.enums.CtrlIntention;
import l2r.gameserver.model.actor.L2Attackable;
import l2r.gameserver.model.actor.L2Npc;
import l2r.gameserver.model.actor.instance.L2PcInstance;

import ai.npc.AbstractNpcAI;

/**
 * Forge of the Gods AI
 * @author nonom, malyelfik
 */
public class ForgeOfTheGods extends AbstractNpcAI
{
	// NPCs
	private static final int[] FOG_MOBS =
	{
		22634, // Scarlet Stakato Worker
		22635, // Scarlet Stakato Soldier
		22636, // Scarlet Stakato Noble
		22637, // Tepra Scorpion
		22638, // Tepra Scarab
		22639, // Assassin Beetle
		22640, // Mercenary of Destruction
		22641, // Knight of Destruction
		22642, // Lavastone Golem
		22643, // Magma Golem
		22644, // Arimanes of Destruction
		22645, // Balor of Destruction
		22646, // Ashuras of Destruction
		22647, // Lavasillisk
		22648, // Blazing Ifrit
		22649, // Magma Drake
	};
	
	private static final int[] LAVASAURUSES =
	{
		18799, // Newborn Lavasaurus
		18800, // Fledgling Lavasaurus
		18801, // Adult Lavasaurus
		18802, // Elderly Lavasaurus
		18803, // Ancient Lavasaurus
	};
	
	private static final int REFRESH = 15;
	
	// private static int _npcsAlive = 0; TODO: Require zone spawn support
	
	public ForgeOfTheGods()
	{
		super(ForgeOfTheGods.class.getSimpleName(), "ai/npc");
		addKillId(FOG_MOBS);
		addSpawnId(LAVASAURUSES);
		startQuestTimer("refresh", REFRESH * 1000, null, null, true);
	}
	
	@Override
	public String onKill(L2Npc npc, L2PcInstance killer, boolean isSummon)
	{
		int rand = getRandom(100);
		L2Npc mob = null;
		
		// For monsters at Forge of the Gods - Lower level
		if (npc.getSpawn().getZ() < -5000) // && (_npcsAlive < 48))
		
		{
			mob = spawnLavasaurus(npc, rand, LAVASAURUSES[2], LAVASAURUSES[1]);
			
		}
		if (mob != null)
		{
			((L2Attackable) mob).addDamageHate(killer, 0, 9999);
			mob.getAI().setIntention(CtrlIntention.AI_INTENTION_ATTACK);
		}
		return super.onKill(npc, killer, isSummon);
	}
	
	private L2Npc spawnLavasaurus(L2Npc npc, int rand, int... mobs)
	{
		if (mobs.length < 2)
		{
			return null;
		}
		
		L2Npc mob = null;
		mob = addSpawn(mobs[1], npc, true);
		return mob;
	}
}