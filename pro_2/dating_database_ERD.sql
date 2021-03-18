
select my_contacts.first_name, my_contacts.last_name, status.status, interests.interest, seeking.seek
from my_contacts
left join zip_code
on my_contacts.zip_code_ids = zip_code.zip_code_id
left join status
on my_contacts.status_ = status.status_id

left join interests
on my_contacts.id = interests.int_id

left join seeking
on my_contacts.id = seeking.seeking_id;