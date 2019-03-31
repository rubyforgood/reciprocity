import React from 'react'
import PropTypes from 'prop-types'

const formTextArea = ({
  defaultValue,
  helpText,
  label,
  name,
}) => (
  <div className="form-group">
    {label && <label htmlFor={name}>{label}</label>}
    <textarea
      name={name}
      className="form-control"
      id={name}
      aria-describedby={`${name}_help`}
      rows="3"
      defaultValue={defaultValue}
    />
    {helpText && <small id={`${name}_help`} className="form-text text-muted">{helpText}</small>}
  </div>
)

formTextArea.propTypes = {
  defaultValue: PropTypes.string,
  helpText: PropTypes.string,
  label: PropTypes.string,
  name: PropTypes.string.isRequired,
}

formTextArea.defaultProps = {
  defaultValue: null,
  helpText: null,
  label: null,
}

export default formTextArea
