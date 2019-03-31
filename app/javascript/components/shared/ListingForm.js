import React from "react";
import Form from "./Form";
import Input from "./FormInput";

const ListingForm = props => {
  return (
    <Form {...props.form}>
      <div className="row">
        <input
          type="text"
          name="listing[created_by_id]"
          id="listing_created_by_id"
          value={props.form.creator_id}
          hidden
        />
        <div className="col">
          <label htmlFor="title">Listing Title</label>
          <Input
            name="listing[title]"
            className="form-control"
            id="title"
            aria-describedby="nameHelp"
            placeholder="Enter title"
          />
        </div>
        <div className="col">
          <label htmlFor="zip_code">Listing zip code</label>
          <Input
            name="listing[zip_code]"
            className="form-control"
            aria-describedby="zipCodeHelp"
            id="zip_code"
          />
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
            <label htmlFor="reference_url">listing Website?</label>
            <Input
              type="url"
              name="listing[reference_url]"
              id="reference_url"
              className="form-control"
              placeholder="https://example.com"
              required
            />
          </div>
        </div>
      </div>
      <div className="form-group">
        <label htmlFor="description">A description of this listing</label>
        <textarea
          name="listing[description]"
          className="form-control"
          id="description"
          aria-describedby="aboutMeHelp"
          rows="3"
        />
      </div>
      {["publish", "interaction"].map(action_type => (
        <div className="row" key={action_type}>
          <div className="col">
            <label htmlFor="start">{action_type} start date:</label>
            <input
              type="date"
              id="start"
              className="form-control"
              name={`listing[${action_type}_start_date]`}
            />
          </div>
          <div className="col">
            <label htmlFor="start">{action_type} end date:</label>
            <input
              type="date"
              id="start"
              className="form-control"
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
