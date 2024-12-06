function r = line_plot(data,
    plt_title, x_title, y_title)
    len = length(data)
    x = 1:len
    plot(x, data);
    title(plt_title);
    xlabel(x_title);
    ylabel(y_title);    
    r=1
end