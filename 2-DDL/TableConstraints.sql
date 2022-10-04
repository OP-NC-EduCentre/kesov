
ALTER TABLE Owners ADD CONSTRAINT number_unique UNIQUE (telephone_number);
ALTER TABLE Owners MODIFY (telephone_number not null);
ALTER TABLE Owners ADD CONSTRAINT owner_pk PRIMARY KEY (owner_id);
ALTER TABLE Owners MODIFY (name not null );

ALTER TABLE Estate ADD CONSTRAINT address_unique UNIQUE (address);
ALTER TABLE Estate MODIFY (address not null);
ALTER TABLE Estate MODIFY (space not null);
ALTER TABLE Estate ADD CONSTRAINT estate_pk PRIMARY KEY (estate_id);
ALTER TABLE Estate ADD CONSTRAINT space_not_zero CHECK (space > 20);
ALTER TABLE Estate ADD CONSTRAINT estate_owner_fk FOREIGN KEY (owner) references Owners(owner_id);
ALTER TABLE Estate MODIFY (owner not null);