import React from "react";
import PropTypes from "prop-types";

const formInput = ({
  defaultValue,
  helpText,
  label,
  name,
  placeholder,
  type
}) => (
  <div className="form-group">
    {label && <label htmlFor={name}>{label}</label>}
    <input
      name={name}
      type={type}
      className="form-control"
      id={name}
      aria-describedby={`${name}_help`}
      placeholder={placeholder}
      defaultValue={defaultValue}
    />
    {helpText && (
      <small id={`${name}_help`} className="form-text text-muted">
        {helpText}
      </small>
    )}
  </div>
);

formInput.propTypes = {
  defaultValue: PropTypes.string,
  helpText: PropTypes.string,
  label: PropTypes.string,
  name: PropTypes.string.isRequired,
  placeholder: PropTypes.string
};

formInput.defaultProps = {
  type: null,
  defaultValue: null,
  helpText: null,
  label: null,
  placeholder: null
};

export default formInput;
