module Worldwise
  module ActiveRecord
    module ClassMethods

      # Given a hash of attributes including the ID, look up the record by ID.
      # If it exists, it is updated with the given options.
      # If it does not exist, it is created with the rest of the options.
      #
      # Raises an exception if the record is invalid to ensure seed data is loaded
      # correctly.
      #
      # Returns the record.
      def create_or_update(options = {})
        id = options.delete('id')
        translations_attributes = options.delete('translations_attributes') || {}
        record = find_by_id(id) || new
        record.id = id
        record.attributes = options
        translations_attributes.each do |ta|
          ta.delete("#{record.class.name.underscore}_id")
          rta = record.translations.find_by_locale(ta['locale']) || record.translations.build
          rta.send("#{record.class.name.underscore}_id=", record.id)
          rta.attributes = ta
          rta.save! unless record.new_record?
        end
        record.save!
        record
      end

    end
  end
end
