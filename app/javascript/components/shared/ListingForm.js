import React from "react";
import Form from "./Form";
import Input from "./FormInput";
import FormTextArea from "./FormTextArea";

const ListingForm = props => {
  return (
    <Form {...props.form}>
      <div className="row">
        <div className="col">
          <Input
            label="Listing Title"
            name="listing[title]"
            placeholder="Enter title"
          />
        </div>
        <div className="col">
          <Input label="Listing zip code" name="listing[zip_code]" />
        </div>
      </div>
      <div className="row">
        <div className="col">
          <label htmlFor="type">Type of listing</label>
          <select name="listing[type]">
            <option value="Offering">Offering</option>
            <option value="Wish">Wish</option>
            <option value="CallToAction">Call to Action</option>
          </select>
        </div>
        <div className="col">
          <div className="form-group">
            <Input
              label="listing Website?"
              type="url"
              name="listing[reference_url]"
              placeholder="https://example.com"
              required
            />
          </div>
        </div>
      </div>
      <div className="form-group">
        <FormTextArea
          label="A description of this listing"
          name="listing[description]"
          id="description"
          rows="3"
        />
      </div>
      {["publish", "interaction"].map(action_type => (
        <div className="row" key={action_type}>
          <div className="col-6">
            <Input
              label={`${action_type} start date:`}
              type="date"
              id="start"
              name={`listing[${action_type}_start_date]`}
            />
          </div>
          <div className="col-6">
            <Input
              label={`${action_type} end date:`}
              type="date"
              id="start"
              name={`listing[${action_type}_end_date]`}
            />
          </div>
        </div>
      ))}
      <button type="submit" className="btn btn-primary">
        Submit
      </button>
    </Form>
  );
};

export default ListingForm;
