DROP TABLE IF EXISTS autos;
CREATE TABLE autos (
    make_id INTEGER,
    model_id INTEGER,
    year INTEGER,
    cylinder_capacity REAL,
    km INTEGER,
    color TEXT,
    region TEXT,
    price INTEGER,
    fuel_type_id INTEGER,
    transmission_id INTEGER,
    traction_id INTEGER,
    age INTEGER
);
