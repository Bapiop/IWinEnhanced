# IWinEnhanced v2.0.1 (Updated for druids)

1-button rotation macros for Turtle Druids, Paladins and Warriors.

Author: Agamemnoth (discord)

Special thanks to contributor: Vlad (discord tfw.vlad)

# Changelog
Bapiop modifications:

### Added
- **Shred Priority with Clearcasting**: Added condition for Shred to have casting priority over Claw/Rake/Rip when the Clearcasting buff is active. This allows free energy Shred casts for maximum damage output.
- **Rake Logic**: Added a 1-second throttle to prevent Rake from being cast multiple times in quick succession when the DoT expires.
- **Short Fight Detection**: Implemented logic to detect short fights (TTD < 15 seconds) and limit abilities accordingly.

### Changed
- **Reshift Mana Threshold**: Lowered the mana requirement for Reshift from 70% to 40% druid mana percentage.

- **Energy Costs Adjustment**: Updated energy costs for Claw, Rake, and Shred to reflect Idol of Ferocity and T2.5 3/5 Genesis set reductions.
  - Claw: 40 -> 34
  - Rake: 35 -> 29
  - Shred: 48 -> 45
- **Rip Combo Point Requirement**: Modified Rip casting conditions to require exactly 2 combo points all the time.
- **Berserk Casting**: Disable automatic Berserk casting in the cat rotation to prevent unwanted activation.
- **Ferocious Bite Condition**: Modified to only cast with exactly 5 combo points, removing the premature casting on low TTD.
- **Rip, Rake, Ferocious Bite on Short Fights**: Added checks to skip these abilities on short fights to conserve energy.
- **Shred on Short Fights**: Limited Shred casting to only when Clearcasting is active on short fights, allowing only Claw otherwise.

## Mods Dependencies

Mandatory Mods:
* [SuperWoW](https://github.com/balakethelock/SuperWoW), A mod made for fixing client bugs and expanding the lua-based API used by user interface addons. Used for debuff tracking.
* [UnitXP](https://codeberg.org/konaka/UnitXP_SP3), Advanced macro conditions and syntax.
* [Nampower](https://github.com/pepopo978/nampower), Increase cast efficiency on the 1.12.1 client. Used for range checks.

## Addons Dependencies

Mandatory Addons:
* [SuperCleveRoidMacros](https://github.com/jrc13245/SuperCleveRoidMacros), Even more advanced macro conditions and syntax.

Optionnal Addons:
* [SP_SwingTimer](https://github.com/Profiler781/SP_SwingTimer), An auto attack swing timer. Used for Slam.
* [PallyPowerTW](https://github.com/ivanovlk/PallyPowerTW), Paladin blessings, auras and judgements assignements.
* [LibramSwap](https://github.com/Profiler781/Libramswap), Automatically swap librams based on cast.
* [TimeToKill](https://github.com/jrc13245/TimeToKill), Advanced time-to-kill estimation using RLS (Recursive Least Squares) algorithm. Used for raid targets.

# Druid Module

## Commands

    /iblast      Single target caster rotation
    /iruetoo     Single target cat rotation
    /itank       Single target bear rotation
    /ihodor      Multi target bear rotation
    /itaunt      Growl if the target is not under another taunt effect

## Setup commands

    /iwin                             Current setup
    /iwin frontshred <toggle>         Setup for Front Shredding

toggle possible values: on, off.

Example: /iwin frontshred on
=> Will setup shred usable in rotations while in front of target. You must strafe through the mob and spam the command.

# Paladin Module

## Commands

    /idps           Single target DPS rotation
    /icleave        Multi target DPS rotation
    /itank          Single target Prot rotation
    /ihodor         Multi target Prot rotation
    /ieco           Mana regeneration rotation
    /ijudge         Seal and Judgement only
    /istun          Stun with Hammer of Justice or Repentance
    /itaunt         Hand of Reckoning if the target is not under another taunt effect
    /ibubblehearth  Divine Shield and Hearthstone. Shame!
    /ihydrate       Use conjured or vendor water

## Setup commands

    /iwin                                   Current setup
    /iwin judgement <judgementName>         Setup for Judgement on elites and worldbosses
    /iwin wisdom <classification>           Setup for Seal of Wisdom target classification
    /iwin crusader <classification>         Setup for Seal of the Crusader target classification
    /iwin light <classification>            Setup for Seal of Light target classification
    /iwin justice <classification>          Setup for Seal of Justice target classification
    /iwin soc <socOption>                   Setup for Seal of Command

judgementName possible values: wisdom, light, crusader, justice, off.

socOption possible values: auto, on, off.

classification possible values: elite, boss.

Example: /iwin judgement wisdom
=> Will setup wisdom as the default judgement.

# Warrior Module

## Commands

    /idps        Single target DPS rotation
    /icleave     Multi target DPS rotation
    /itank       Single target threat rotation
    /ihodor      Multi target threat rotation
    /ichase      Stick to your target with Charge, Intercept, Hamstring
    /ikick       Kick with Pummel or Shield Bash
    /ifeardance  Use Berserker Rage if available
    /itaunt      Taunt or Mocking Blow if the target is not under another taunt effect
    /ishoot      Shoot with bow, crossbow, gun or throw

## Setup commands

    /iwin                             Current setup
    /iwin charge <partySize>          Setup for Charge and Intercept.
    /iwin chargewl <toggle>           Setup to allow Charge and Intercept on whitelist targets.
    /iwin sunder <priority>           Setup for Sunder Armor priority as DPS.
    /iwin demo <toggle>               Setup for Demoralizing Shout.
    /iwin dtbattle <toggle>           Setup to allow Battle stance with Defensive Tactics.
    /iwin dtdefensive <toggle>        Setup to allow Defensive stance with Defensive Tactics.
    /iwin dtberserker <toggle>        Setup to allow Berserker stance with Defensive Tactics.
    /iwin ragebuffer <number>         Setup to save 100% required rage for spells X seconds before the spells are used.
    /iwin ragegain <number>           Setup to anticipate rage gain per second. Required rage will be saved gradually before the spells are used.
    /iwin jousting <toggle>           Setup for jousting solo DPS.

partySize possible values: raid, group, solo, targetincombat, off.

priority possible values: high, low, off.

toggle possible values: on, off.

number possible values: 0 or more.

Example: /iwin charge group
=> Will setup charge usable in rotations while in group or solo.
