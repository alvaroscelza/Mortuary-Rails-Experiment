module ApplicationHelper
    def full_title(page_title = '')
        base_title = 'Mortuary'
        if page_title.empty?
            base_title
        else
            format('%<page_title> | %<base_title>')
        end
    end
end
