module ApplicationHelper

  def show_index(index, per = 12)
    params[:page] ||= 1
    (params[:page].to_i - 1) * per + index + 1
  end

  def link_to_blank(*args, &block)
    if block_given?
      options      = args.first || {}
      html_options = args.second || {}
      return link_to_blank(capture(&block), options, html_options)
    end
    name         = args[0]
    options      = args[1] || {}
    html_options = args[2] || {}

    html_options.reverse_merge! target: '_blank'
    html_options.reverse_merge! rel: "noreferrer"

    link_to(name, options, html_options)
  end
end
