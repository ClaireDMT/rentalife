import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr("#start_date", {
  altInput: true,
  allowInput: true,
  plugins: [new rangePlugin({ input: "#end_date"})],
  minDate: "today"
});

