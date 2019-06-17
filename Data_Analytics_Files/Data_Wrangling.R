# The purpose of this .R script is to support the analytics for the CHOP R User
# Group R Markdown file

# my_ggtheme Declaration-------------------------------------------------------
# If I use the same ggplot theme commands for a lot of plots, I will usually
# make a variable to reference so save scripting space and time
my_ggtheme <- list(
  theme_light(),
  theme(plot.title = element_text(hjust = 0.5, face = "bold", size = 14),
        plot.subtitle = element_text(hjust = 0.5, face = "bold")),
  theme(axis.line = element_line(size = 3, colour = "grey80")),
  theme(axis.text.x = element_text(angle = 65, hjust = 1, size = 12), text = element_text(size = 14)),
  theme(strip.text.x = element_text(size = 16, colour = 'black'), 
        strip.text.y = element_text(size = 16, colour = 'black'))
)


# Graphing Max HR By Age and Gender --------------------------------------------
# Declare new column to specify gender as a classifier and not an integer
# This is helpful to control for the legend outputs
heart$Gender <- heart$sex
heart$Gender[heart$Gender == 1] <- "M" # Replace all 1's with "M"
heart$Gender[heart$Gender == 0] <- "F" # Replace all 0's with "F"

Max_HR_Gender.plot <- heart %>% 
  select(age, Gender, thalach) %>% 
  ggplot(aes(x = age, y = thalach,  color = Gender, shape = Gender)) + 
  geom_point(size = 3) + my_ggtheme +
  xlab("Patient Age (Years)") + ylab("Maximum HR (BPM)") +
  ggtitle("Max HR By Age and Gender") +
  scale_colour_manual(values = c("firebrick2", "dodgerblue3"))