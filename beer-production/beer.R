library(tidyverse)
library(janitor)
library(tidymodels)

brewing_materials_raw <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-03-31/brewing_materials.csv")

brewing_materials_raw %>%
    count(type, wt = month_current, sort = TRUE)

# how materials have changed over time?

brewing_filtered <- brewing_materials_raw %>%
    filter(
        type %in% c(
            "Malt and malt products",
            "Sugar and syrups",
            "Hops (dry)"
        ),
        year < 2016,
        !(month == 12 & year %in% 2014:2015)
    ) %>%
    mutate(
        date = paste0(year, "-", month, "-01"),
        date = lubridate::ymd(date)
    )

brewing_filtered %>%
    ggplot(aes(date, month_current, color = type)) +
    geom_point()

brewing_materials <- brewing_filtered %>%
    select(date, type, month_current) %>%
    pivot_wider(
        names_from = type,
        values_from = month_current
    ) %>%
    janitor::clean_names()

brewing_materials

# There is a lot of variation in this relationship, 
# but beer reproducers use more sugar when they use more malt. What is the relationship?

brewing_materials %>%
    ggplot(aes(malt_and_malt_products, sugar_and_syrups)) +
    geom_smooth(method = "lm") +
    geom_point()


beer_fit <- lm(sugar_and_syrups ~ 0 + malt_and_malt_products,
               data = brewing_materials
)

summary(beer_fit)

tidy(beer_fit)
