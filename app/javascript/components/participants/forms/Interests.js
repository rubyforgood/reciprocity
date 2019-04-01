import React from 'react'
import PropTypes from 'prop-types'
import BootstrapContainer from 'BootstrapContainer'
import Form from '../../shared/Form'
import Checkbox from '../../shared/FormCheckbox'
import Input from '../../shared/FormInput'

const ParticipantInterestForm = ({
  interest_list,
  form,
}) => {
  return(
    <BootstrapContainer>
      <Form className="form-inline col-12 justify-content-center" {...form}>
        <div className="form-group col-12 col-lg-9">
          <fieldset className="col-12">
            <legend className="text-center">Interests and Focus</legend>
            <p className="text-center">Check all that apply to your interests and the kinds of things you might want to come across in your time exploring Reciprocity.Love</p>
            <div className="form-group">
              {interest_list.map(function(interest, i) {
                return <Checkbox
                  key={i}
                  label={interest}
                  name="interest_list[]"
                  value={interest}
                  wrapperClass="col-6 col-sm-4 col-md-3"
                />
              })}
            </div>
            <div className="form-group mt-2 mb-3">
              <Input
                label="Other(s):"
                name="interest_list[]"
                helpText="Separate tags with commas"
              />
            </div>
          </fieldset>
        </div>
        <div className="form-group col-12 col-lg-9 text-center">
          <div className="col">
            <button type="submit" className="btn btn-primary">Next</button>
          </div>
        </div>
      </Form>
    </BootstrapContainer>
  )
}

ParticipantInterestForm.propTypes = {
  interest_list: PropTypes.array.isRequired,
}

export default ParticipantInterestForm
