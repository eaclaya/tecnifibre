class Participant < ApplicationRecord
    belongs_to :tour
    belongs_to :player
    after_create_commit {broadcast_prepend_to 'participants' }
    after_update_commit {broadcast_replace_to 'participants' }
    after_destroy_commit {broadcast_remove_to 'participants' }
end
