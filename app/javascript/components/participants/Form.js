import React from 'react'
import BootstrapContainer from 'BootstrapContainer'
import Form from '../shared/Form'
import Input from '../shared/FormInput'
import TextArea from '../shared/FormTextArea'

const ParticipantForm = ({
  about,
  form,
  name,
  zip,
}) => {
  return(
    <BootstrapContainer>
      <div className="row">
        <div className="col-6">
          <Form {...form}>
            <Input
              defaultValue={name}
              helpText="This is your display name in the application"
              label="Your name"
              name="display_name"
              placeholder="Enter name"
            />
            <Input
              defaultValue={zip}
              helpText="What is your home zipcode?"
              label="Your zip code"
              name="zip_code"
            />
            <TextArea
              label="About me"
              name="about_me"
              defaultValue={about}
              helpText="Tell us a bit about yourself"
            />
            <button type="submit" className="btn btn-primary">Submit</button>
          </Form>
        </div>
      </div>
    </BootstrapContainer>
  )
}

export default ParticipantForm

