import React, { useState } from "react";
import Form from "./Form";
import Input from "./FormInput";
import FormTextArea from "./FormTextArea";
import { DateRangePicker } from "react-dates";
import "react-dates/initialize";
import "react-dates/lib/css/_datepicker.css";

const ListingForm = props => {
  const [publishStartDate, setPublishStartDate] = useState();
  const [publishEndDate, setPublishEndDate] = useState();
  const [interactionStartDate, setInteractionStartDate] = useState();
  const [interactionEndDate, setInteractionEndDate] = useState();
  const [publishFocused, setPublishFocused] = useState();
  const [interactionFocused, setInteractionFocused] = useState();

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
      <div className="row">
        <div className="col">
          <label htmlFor="type">Publishing Start and End date</label>
          <DateRangePicker
            startDate={publishStartDate}
            startDateId="publish_start_date_id"
            endDate={publishEndDate}
            endDateId="publish_end_date_id"
            onDatesChange={({ startDate, endDate }) => {
              document.querySelector("#publish_start").value = startDate.format(
                "YYYY-MM-DD"
              );
              if (endDate) {
                document.querySelector("#publish_end").value = endDate.format(
                  "YYYY-MM-DD"
                );
              }
              setPublishEndDate(endDate);
              setPublishStartDate(startDate);
            }}
            focusedInput={publishFocused}
            onFocusChange={setPublishFocused}
          />
        </div>
      </div>
      <div className="row">
        <div className="col">
          <label htmlFor="type">Interaction Start and End date</label>
          <DateRangePicker
            startDate={interactionStartDate}
            startDateId="interaction_start_date_id"
            endDate={interactionEndDate}
            endDateId="interaction_end_date_id"
            onDatesChange={({ startDate, endDate }) => {
              document.querySelector(
                "#interaction_start"
              ).value = startDate.format("YYYY-MM-DD");
              if (endDate) {
                document.querySelector(
                  "#interaction_end"
                ).value = endDate.format("YYYY-MM-DD");
              }
              setInteractionEndDate(endDate);
              setInteractionStartDate(startDate);
            }}
            focusedInput={interactionFocused}
            onFocusChange={setInteractionFocused}
          />
        </div>
      </div>
      {["publish", "interaction"].map(action_type => (
        <React.Fragment>
          <input
            label={`${action_type} start date:`}
            type="date"
            id={`${action_type}_start`}
            class="hidden"
            name={`listing[${action_type}_start_date]`}
          />
          <input
            label={`${action_type} end date:`}
            type="date"
            id={`${action_type}_end`}
            class="hidden"
            name={`listing[${action_type}_end_date]`}
          />
        </React.Fragment>
      ))}
      <button type="submit" className="btn btn-primary">
        Submit
      </button>
    </Form>
  );
};

export default ListingForm;
