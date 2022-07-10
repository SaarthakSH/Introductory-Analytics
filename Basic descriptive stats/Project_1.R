
#Task 1: Create a vector name cars_speed and enter data from the table

cars_speed = c(90.40, 60.49, 56.88, 58.55, 74.84, 70.26, 79.34,
59.85, 72.21, 61.29, 61.14, 75.37, 62.24, 75.80, 77.56, 78.25, 
60.40, 58.71, 59.69, 65.41, 68.32, 65.42, 72.98, 67.77)

cars_speed

# Task 2: Obtain and present the average speed

meanSpeed = mean(cars_speed)

print(paste("The mean speed is", round(meanSpeed,2), "miles per hour"))

# Task 3: Obtain and present the standard deviation

stdSpeed = sd(cars_speed)

print(paste("The standard deviation is", round(stdSpeed,2)))

# Task 4: Obtain and present the median speed

median_speed = median(cars_speed)

print(paste("The median is", round(median_speed,2)))

# Task 5: Obtain and present the quantiles.

# An objects probs was created to store min, 25th, 50th, 75th and max quantile value.

probs = quantile(cars_speed, c(0.0, 0.25, 0.50, 0.75, 1.00))
probs

# Task 6: Delete values

new_cars_speed = cars_speed[!cars_speed %in% 90.4] 
new_meanSpeed = mean(new_cars_speed)

# Task 7: Add values

add_value = append(new_cars_speed, 55.87)
add_value
mean(add_value)

# Task 8: Create vector sales

sales = c(180, 172, 129, 234, 258, 133, 215)

# Task 9: Create a title vector days

days = c('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday')
days

# Task 10: Link the days of the week with the sales values

names(sales) = days
sales

# Task 11: Present sales again and observe the difference

sales

# Task 12: Create a vector indicating sales above $200

sales > 200
sales_above200 = sales > 200
sales_above200

# Task 13. Present good sales days using a table library

knitr::kable(sales_above200)

# Square brackets were used to select observations of interest

knitr::kable(sales[sales_above200]) 

# Task 14. Present only the days with sales below $200

sales_below200 = sales < 200
sales_below200
sales[sales_below200]

# Task 15. Present the total sales (sum) on the days with sales above $200

total_sum_above200 = sales[sales_above200]
sum(total_sum_above200)

# Task 16. Duplicate the following table using R codes

main_store = c(115,94,120)
first_branch = c(97,120,99)
second_branch = c(101,103,93)
third_branch = c(107,103,109)

cities = c(main_store, first_branch, second_branch, third_branch)
cities

cities_matrix = matrix(cities, nrow = 4, byrow = TRUE)
cities_matrix

region = c('Yaounde', 'Brazzaville', 'Luanda')
branches = c('Main Store','First Branch','Second Branch','Third Branch')

colnames(cities_matrix) = region
rownames(cities_matrix) = branches

cities_matrix

knitr::kable(cities_matrix)
