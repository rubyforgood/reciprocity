import React from 'react'
import BootstrapContainer from 'BootstrapContainer'

const NewParticipant = () => {
  return(
    <BootstrapContainer>
      <div className="row">
        <div className="col-6">
          <form action="/participants" method="post">
            <div className="form-group">
              <label htmlFor="display_name">Your name</label>
              <input name="display_name" className="form-control" id="display_name" aria-describedby="nameHelp" placeholder="Enter name" />
              <small id="nameHelp" className="form-text text-muted">This is your display name in the application</small>
            </div>
            <div className="form-group">
              <label htmlFor="zip_code">Your zip code</label>
              <input name="zip_code" className="form-control" aria-describedby="zipCodeHelp" id="zip_code" />
              <small id="zipCodeHelp" className="form-text text-muted">What is your home zipcode?</small>
            </div>
            <div className="form-group">
              <label htmlFor="about_me">About me</label>
              <textarea name="about_me" className="form-control" id="about_me" aria-describedby="aboutMeHelp" rows="3" />
              <small id="aboutMeHelp" className="form-text text-muted">Tell us a bit about yourself</small>
            </div>
            <button type="submit" className="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </BootstrapContainer>
  )
}

export default NewParticipant

