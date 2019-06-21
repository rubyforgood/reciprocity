import React from 'react'
import BootstrapContainer from 'BootstrapContainer'
import Form from '../../shared/Form'
import Checkbox from '../../shared/FormCheckbox'
import Input from '../../shared/FormInput'

const ListingConfirmForm = ({
  form,
}) => {
  return(
    <BootstrapContainer>
      <Form className="form-inline col-12 justify-content-center" {...form}>
        <div className="form-group col-12 col-lg-9">
          <fieldset className="col-12">
            <legend className="text-center">Capacity Check</legend>
            <p className="text-center">
              Before you complete this offering, we invite you to check in with a few things:
            </p>
            <div className="form-group">
              <Checkbox
                label="In making this offering, I give freely, of my own accord, without any expectations or attachment to control of the outcome"
                name="no-expectations"
                value="true"
              />
              <Checkbox
                label="I present my offering in the spirit of selflessness and service to the greater good and am within my means to do so, without overburdening myself, or others"
                name="greater-good"
                value="true"
              />
              <Checkbox
                label="The offering I am making is mine to give and safe for whoever receives it"
                name="safe"
                value="true"
              />
            </div>
          </fieldset>
        </div>
        <div className="form-group col-12 col-lg-9 text-center">
          <div className="col">
            <button type="submit" className="btn btn-primary">Complete Offer</button>
          </div>
        </div>
      </Form>
    </BootstrapContainer>
  )
}

export default ListingConfirmForm
