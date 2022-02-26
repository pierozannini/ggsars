plot_power <- function(sar) {

  ggplot(data = sar$data,
         mapping = aes(x = A, y = S)) +
    geom_point() +
    stat_smooth(method = "nls", formula = y ~ c * x ^ z,
                method.args = list(start = c(c = as.numeric(sar$par[1]),
                                             z = as.numeric(sar$par[2]))),
                se = FALSE, linetype = 1, color = "black") +
    labs(x = "Area",
         y = "Species Richness") +
    theme_classic() +
    theme(axis.text = element_text(colour = "black"))

}
