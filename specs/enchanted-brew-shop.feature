Feature: The Enchanted Brew Shop

  # Both versions live at:
  #   Version 1: https://qe-at-cgi-fi.github.io/two-versions/version1/
  #   Version 2: https://qe-at-cgi-fi.github.io/two-versions/version2/

  # ── Header ────────────────────────────────────────────────────────────

  Scenario Outline: Shop header displays branding and operational info
    Given I open "<url>"
    Then I see the shop name "The Enchanted Brew Shop"
    And I see the tagline "Handcrafted potions since 1247"
    And I see the delivery badge "🦉 Owl Post: 3-5 days"
    And I see the operating hours "Open dawn to dusk"

    Examples:
      | url                                                          |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       |

  # ── Featured Product ──────────────────────────────────────────────────

  Scenario Outline: Featured potion of the week is displayed with discount
    Given I open "<url>"
    Then I see the featured potion "Elixir of Eternal Focus"
    And I see a discount badge "15% OFF"
    And I see the original price "40 gold" with the discounted price "34 gold"
    And I see an "Add to Order" button

    Examples:
      | url                                                          |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       |

  # ── Potion Customizer: Base Potions ───────────────────────────────────

  Scenario Outline: Base potion options are listed with correct prices
    Given I open "<url>"
    Then I see base potion option "<potion>" priced at "<price>"

    Examples:
      | url                                                          | potion                | price   |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | ❤️ Healing Draught    | 25 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 💪 Elixir of Strength | 30 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🧠 Potion of Wisdom   | 35 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 👻 Invisibility Brew  | 45 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | ❤️ Healing Draught    | 25 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 💪 Elixir of Strength | 30 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🧠 Potion of Wisdom   | 35 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 👻 Invisibility Brew  | 45 gold |

  # ── Potion Customizer: Size Multipliers ───────────────────────────────
  # NOTE: Flask and Bottle multipliers differ between versions

  Scenario Outline: Size options are listed with correct multipliers
    Given I open "<url>"
    Then I see size option "<size>" with multiplier "<multiplier>"

    Examples:
      | url                                                          | size             | multiplier |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🧴 Vial 50ml     | 1x         |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | ⚗️ Flask 150ml   | 1.5x       |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🍾 Bottle 500ml  | 2x         |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🧴 Vial 50ml     | 1x         |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | ⚗️ Flask 150ml   | 1.35x      |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🍾 Bottle 500ml  | 2.5x       |

  # ── Potion Customizer: Special Ingredients ────────────────────────────
  # NOTE: Phoenix Feather and Starlight Dew costs differ between versions

  Scenario Outline: Special ingredients are listed with correct prices
    Given I open "<url>"
    Then I see ingredient "<ingredient>" costing "<cost>"

    Examples:
      | url                                                          | ingredient          | cost     |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🐉 Dragon Scale     | +15 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🌙 Moonstone Dust   | +8 gold  |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🔥 Phoenix Feather  | +20 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🍯 Enchanted Honey  | +5 gold  |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🌑 Shadow Essence   | +12 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | ⭐ Starlight Dew    | +12 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🐉 Dragon Scale     | +15 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🌙 Moonstone Dust   | +8 gold  |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🔥 Phoenix Feather  | +18 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🍯 Enchanted Honey  | +5 gold  |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🌑 Shadow Essence   | +12 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | ⭐ Starlight Dew    | +10 gold |

  # ── Potion Customizer: Potency ────────────────────────────────────────

  Scenario Outline: Potency options are the same across both versions
    Given I open "<url>"
    Then I see potency option "<potency>" with description "<description>"

    Examples:
      | url                                                          | potency   | description                   |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | Standard  | Regular strength               |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | Enhanced  | +25% strength, +25% price      |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | Maximum   | +75% strength, +75% price      |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | Standard  | Regular strength               |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | Enhanced  | +25% strength, +25% price      |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | Maximum   | +75% strength, +75% price      |

  # ── Order Summary: Initial State ──────────────────────────────────────
  # NOTE: Version 2 includes the default delivery cost (5 gold Owl Post) in
  #       the total from the start; Version 1 shows only the brewing fee.

  Scenario Outline: Order total before any potion is selected
    Given I open "<url>"
    Then the order summary shows brewing fee "3 gold"
    And the grand total shows "<total>"

    Examples:
      | url                                                          | total      |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 3.00 gold  |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 8.00 gold  |

  # ── Order Summary: Price Calculation ──────────────────────────────────
  # Formula (V1): total = (base × size_multiplier × potency_multiplier + ingredients) × qty + brewing_fee
  # Formula (V2): total = (base × size_multiplier × potency_multiplier + ingredients) × qty + brewing_fee + delivery_cost

  Scenario Outline: Order total with Healing Draught, Vial, Standard potency, qty 1, no ingredients
    Given I open "<url>"
    When I select "❤️ Healing Draught" as the base potion
    And I select size "Vial"
    And I select potency "Standard"
    And I set quantity to "1"
    And no ingredients are selected
    Then the order summary subtotal shows "25.00 gold"
    And the brewing fee shows "3 gold"
    And the grand total shows "<total>"

    Examples:
      | url                                                          | total      |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 28.00 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 33.00 gold |

  Scenario Outline: Order total with size multiplier applied
    Given I open "<url>"
    When I select "❤️ Healing Draught" as the base potion
    And I select size "<size>"
    And I select potency "Standard"
    And I set quantity to "1"
    And no ingredients are selected
    Then the grand total shows "<total>"

    Examples:
      | url                                                          | size    | total      |
      # V1: 25 × 1.5 + 3 = 40.50; V2: 25 × 1.35 + 3 + 5 = 41.75
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | Flask   | 40.50 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | Flask   | 41.75 gold |
      # V1: 25 × 2 + 3 = 53.00; V2: 25 × 2.5 + 3 + 5 = 70.50
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | Bottle  | 53.00 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | Bottle  | 70.50 gold |

  Scenario Outline: Order total with Enhanced potency applied
    Given I open "<url>"
    When I select "❤️ Healing Draught" as the base potion
    And I select size "Vial"
    And I select potency "Enhanced"
    And I set quantity to "1"
    And no ingredients are selected
    Then the grand total shows "<total>"

    Examples:
      | url                                                          | total      |
      # V1: 25 × 1.25 + 3 = 34.25; V2: 25 × 1.25 + 3 + 5 = 39.25
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 34.25 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 39.25 gold |

  Scenario Outline: Order total with Maximum potency applied
    Given I open "<url>"
    When I select "❤️ Healing Draught" as the base potion
    And I select size "Vial"
    And I select potency "Maximum"
    And I set quantity to "1"
    And no ingredients are selected
    Then the grand total shows "<total>"

    Examples:
      | url                                                          | total      |
      # V1: 25 × 1.75 + 3 = 46.75; V2: 25 × 1.75 + 3 + 5 = 51.75
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 46.75 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 51.75 gold |

  Scenario Outline: Order total with Dragon Express delivery
    Given I open "<url>"
    When I select "❤️ Healing Draught" as the base potion
    And I select size "Vial"
    And I select potency "Standard"
    And I set quantity to "1"
    And no ingredients are selected
    And I select delivery method "🐲 Dragon Express"
    Then the grand total shows "<total>"

    Examples:
      | url                                                          | total      |
      # V1: 25 + 3 = 28 (delivery not in total); V2: 25 + 3 + 15 = 43
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 28.00 gold |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 43.00 gold |

  # ── Delivery Details Form ──────────────────────────────────────────────

  Scenario Outline: Delivery form has required fields
    Given I open "<url>"
    Then the form has a required field "Full Name"
    And the form has a required field "Castle/Tower Name"
    And the form has a required field "Kingdom/Realm"
    And the form has a required field "Delivery Method"
    And the form has an optional field "Tower/Room Number"
    And the form has an optional field "Contact Crystal"
    And the form has an optional field "Special Instructions"

    Examples:
      | url                                                          |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       |

  Scenario Outline: Delivery methods are available with correct costs and timing
    Given I open "<url>"
    Then I see delivery option "<method>" costing "<cost>" with estimated delivery "<timing>"

    Examples:
      | url                                                          | method             | cost    | timing   |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🦉 Owl Post        | 5 gold  | 3-5 days |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 🐲 Dragon Express  | 15 gold | Next day |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🦉 Owl Post        | 5 gold  | 3-5 days |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 🐲 Dragon Express  | 15 gold | Next day |

  # NOTE: Submit button accessible name differs between versions:
  #   Version 1: accessible name = "Submit", visible text = "🔮 Brew My Order"
  #   Version 2: accessible name = "🔮 Brew My Order"

  Scenario Outline: Submit button is visible with correct label
    Given I open "<url>"
    Then I see the submit button labelled "🔮 Brew My Order"

    Examples:
      | url                                                          |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       |

  # ── Customer Reviews ──────────────────────────────────────────────────

  Scenario Outline: Customer reviews section shows 4 testimonials with ratings
    Given I open "<url>"
    Then I see "4" customer reviews
    And I see a review from "Sir Aldric of Westmoor" rated "★★★★★"
    And I see a review from "Shadow Walker Lyra" rated "★★★★★"
    And I see a review from "Vampire Lord Cornelius" rated "★★★★★"
    And I see a review from "Apprentice Wizard Finn" rated "★★★★☆"

    Examples:
      | url                                                          |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       |

  # ── Footer ────────────────────────────────────────────────────────────

  Scenario Outline: Footer displays address and contact information
    Given I open "<url>"
    Then I see the shop address "42 Cauldron Lane, Mystic Quarter, Avalon, Enchanted Realm"
    And I see the contact crystal address "brew@enchanted.shop"
    And I see social links for "SpellBook", "Wandergram", and "Potion-terest"
    And I see the satisfaction guarantee "gold back"

    Examples:
      | url                                                          |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       |

  # NOTE: Version 1 footer says "Open dusk to dawn" — inconsistent with the
  #       header which says "Open dawn to dusk". Version 2 is consistent.

  Scenario Outline: Footer shows shop closure conditions
    Given I open "<url>"
    Then the footer shows shop hours "<hours>"
    And the footer notes "Closed on full moons"
    And the footer notes "& during dragon migrations"

    Examples:
      | url                                                          | hours             |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | Open dusk to dawn |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | Open dawn to dusk |

  Scenario Outline: Copyright year reflects version
    Given I open "<url>"
    Then I see copyright notice "© 1247-<year> The Enchanted Brew Shop"

    Examples:
      | url                                                          | year |
      | https://qe-at-cgi-fi.github.io/two-versions/version1/       | 2024 |
      | https://qe-at-cgi-fi.github.io/two-versions/version2/       | 2026 |
