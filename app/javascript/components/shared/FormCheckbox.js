import React from 'react'
import PropTypes from 'prop-types'

const formCheckbox = ({
  checked,
  label,
  name,
  value,
  wrapperClass,
}) => (
  <div className={wrapperClass + " custom-control custom-checkbox"}>
    {/* TODO: implement 'checked' as a prop */}
    <input
      type="checkbox"
      className="custom-control-input"
      id={name+'-'+value}
      name={name}
      value={value}
    />
    <label className="custom-control-label" htmlFor={name+'-'+value}>
      <p className="w-100 mb-1 text-left text-nowrap">{label}</p>
    </label>
  </div>
)


formCheckbox.propTypes = {
  checked: PropTypes.bool,
  label: PropTypes.string.isRequired,
  name: PropTypes.string.isRequired,
  value: PropTypes.string.isRequired,
}

formCheckbox.defaultProps = {
  checked: false,
}

export default formCheckbox

