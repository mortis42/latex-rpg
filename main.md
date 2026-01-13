---
# Do not change order of the following
title: Title of the Campaign
subtitle: Subtitle of the Campaign
author: Name of the Author
toc: true
cover-image: images/example-image-0.png
cover-title: true
foreword: true
credits: true
# Mandatory fields. Please do not remove.
pandoc-latex-environment:
  squarebox: [squarebox]
  roundedbox: [roundedbox]
---

# Heading 1 (section)

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus ex id nisi sagittis, eget venenatis ex blandit. Nam vel efficitur dui. Suspendisse euismod ac enim at facilisis. Maecenas lacinia malesuada ipsum sit amet maximus. S

## Heading 2 (subsection)

Duis placerat pulvinar dui, quis varius metus iaculis nec. Vestibulum iaculis scelerisque risus id tincidunt. Donec non dictum augue. Mauris aliquet, neque vitae sagittis convallis, justo augue vestibulum erat, nec convallis tortor libero eget ex. 

### Heading 3 (subsubsection)

Cras blandit ex at leo tincidunt feugiat. Integer congue gravida tincidunt. Pellentesque accumsan nulla ut placerat blandit. 

#### Heading 4 (paragraph)

Fusce facilisis mi in odio feugiat mattis in eu tellus. Donec lobortis, neque quis fermentum commodo, quam ligula fermentum leo, at finibus nibh est at leo. Fusce non risus non nunc vestibulum eleifend. 

##### Heading 5 (subparagraph)

Nulla lobortis nulla enim, et aliquam ipsum congue eu. Vivamus eget luctus lacus, quis vestibulum nibh. Duis gravida nunc at mollis facilisis. Vivamus at quam malesuada, luctus arcu luctus, egestas risus.

###### Heading 6 (hsix)

Quisque a dapibus erat. Fusce id massa quis risus sollicitudin aliquam. Duis eget semper augue. Cras venenatis placerat tristique. Aliquam erat volutpat. Vivamus luctus sit amet massa in euismod. Proin ac volutpat odio.

# Boxes

::: squarebox
**This is a box title**
This is a quote from a character in the campaign. *It should be visually distinct from the rest of the text*, perhaps with a different font or style.
:::

::: roundedbox
**This is a rounded box title**
This is a quote from a character in the campaign. *It should be visually distinct from the rest of the text*, perhaps with a different font or style.
:::

> ***Note***: This is a quote from a character in the campaign. *It should be visually distinct from the rest of the text, perhaps with a different font or style*.

::: adversary
name: Vampire, The Bloodthirsty
type: Tier 2 Solo
description: A fearsome vampire that preys on the weak.
tactics: Attack from shadows, drain blood
difficulty: 15
thresholds: 16 / 30
hp: 8
srtess: 4
atk: +4
weapons:
  - Fangs: Close | 2d8+2 (Magical)
experience: Bloodthirsty Knowledge +3
features:
  - Blood Drain - Action: Make an attack against a target within Close range. On a success, deal 2 and the target must mark an Armor Slot without gaining its benefit (they can still use armor to reduce the damage)
  - Shadow Step - Action: Move to a location within Close range, ignoring terrain.
:::

::: environment
name: The Dark Forest (1)
type: Tier 1 (2)
description: A dense forest filled with shadows and danger. (3)
impulses: Explore, Survive, Escape (4)
difficulty: 10 (5)
adversaries: Goblin Scout, Shadow Beast (5)
features:
  - Dense Trees: Provides cover and concealment.
  - Hidden Paths: Allows for stealthy movement. (6)
:::

::: rules
title: Optional Rules

Sidebars like this one, in green, **describe** *optional* ***rules***. They give the game more depth and complexity, but the game works fine without them. You might want to start playing without them and add them as you become more familiar with the game.
:::

::: rules
This is an optional rule that does not require a Title.
:::

::: table
title: Test Table

| Item | Weight | Cost |
| :--- | :----- | :--- |
| Rope | 5 lbs  | 1gp  |
| Iron | 10 lbs | 5sp  |

:::

::: table

| Item | Weight | Cost |
| :--- | :----- | :--- |
| Rope | 5 lbs  | 1gp  |
| Iron | 10 lbs | 5sp  |

:::

::: sidebar
title: This Is a Sidebar

Sidebars like this one, in green, **describe** *optional* ***rules***. They give the game more depth and complexity, but the game works fine without them. You might want to start playing without them and add them as you become more familiar with the game.
:::
