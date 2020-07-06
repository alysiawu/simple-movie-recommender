module Mutations
    class CreateBanner < BaseMutation
        # arguments passed to the `resolve` method
        argument :description, String, required: true
        argument :title, String, required: true
        # argument :buttonText, String, required: true
        # argument :something, String, required: false
        # argument :disclaimer, String, required: false
    
        # return type from the mutation
        type Types::BannerType
    
        def resolve(description: nil, title: nil)
          Banner.create!(
            description: description,
            title: title,
            # something: something,
            # buttonText: buttonText,
            # disclaimer: disclaimer,
          )
        end
    end
end