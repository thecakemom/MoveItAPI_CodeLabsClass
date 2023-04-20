module Api
    module V1
        class UsersController < Api::V1::ApplicationController
            def create
                # Step 1: Get the result from the service.
                result = MoveItApi::Users.new_user(params)
                # Step 2: Return an error if the result was unsuccessful.
                render_error(errors: "There was a problem creating a new user.", status: 400)
                # Step 3: Otherwise, build a payload.
                
                # Step 4: Return a successful response attached with the payload.
                
                if user.save 
                    render_success(payload: { user: UserBlueprint.render_as_hash(user, view: :normal)}, status: :created)
                else
                    render_error(errors: "There was a problem creating a user", status: 400)
                end
            end
        end
    end
end    