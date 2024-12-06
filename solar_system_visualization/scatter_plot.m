function r = scatter_plot(planet_distances, planet_sizes, x_title, y_title)
    len = length(planet_distances);
    x_title = 1:len
    plot(x_title, planet_distances);
    title(planet_sizes);
    xlabel(x_title);
    ylabel(y_title);
    r = 1
end
