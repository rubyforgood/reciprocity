import React from 'react'
import BootstrapContainer from 'BootstrapContainer'
import Form from '../shared/Form'
import Input from '../shared/FormInput'

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
          <Form props={form}>
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
            <div className="form-group">
              <label htmlFor="about_me">About me</label>
              <textarea
                name="about_me"
                className="form-control"
                id="about_me"
                aria-describedby="aboutMeHelp"
                rows="3"
                defaultValue={about}
              />
              <small id="aboutMeHelp" className="form-text text-muted">Tell us a bit about yourself</small>
            </div>
            <button type="submit" className="btn btn-primary">Submit</button>
          </Form>
        </div>
      </div>
    </BootstrapContainer>
  )
}

export default ParticipantForm

