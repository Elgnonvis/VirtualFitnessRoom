module ApplicationHelper
    # ajouter un bouton pour ajouter les champs du nested atributes
    def link_to_add_fields(name, f, association)
        # create new object from the association(:sessions)
        new_object = f.object.send(association).klass.new
        # just create or take id from the new created object
        id = new_object.object_id
        fields = f.simple_fields_for(association, new_object, child_index: id) do |builder|
            render(association.to_s.singularize + "_fields", f: builder)
        end
        # pass down the link to the fields form
        link_to(name, '#', class: 'add_fields btn btn-success', data: {id: id, fields: fields.gsub("\n", "")})

    end
end
