class UserBlueprint < Blueprinter::Base
    identifier :id
    fields :first_name, :last_name, :name, :email, :username

    view :normal do
        fields :token
    end
end

# default view
#
# {
#   id: integer
#   first_name: string,
#   last_name: string,
#   name: first_name + last_name
#   email: string
#   username: string
# }