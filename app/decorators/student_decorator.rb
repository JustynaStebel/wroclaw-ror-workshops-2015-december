class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    avg_note = subject_item_notes.where(subject_item_id: subject_item)
    if avg_note.empty?
      "0.00"
    else
      number_with_precision(avg_note.average(:value), precision: 2)
    end
  end
end
