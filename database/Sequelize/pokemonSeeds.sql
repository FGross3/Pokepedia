DROP DATABASE IF EXISTS pokemon_db;

CREATE DATABASE pokemon_db;


USE pokemon_db;

CREATE TABLE pokemon
(
  id INT NOT NULL
  AUTO_INCREMENT,

  name VARCHAR
  (45) NOT NULL,

  type1 INT
  (2) NOT NULL,

  type2 INT
  (2) NULL,

  PRIMARY KEY
  (id)
);

  CREATE TABLE typing
  (
    id INT NOT NULL
    AUTO_INCREMENT,

  typing VARCHAR
    (45) NOT NULL,

  PRIMARY KEY
    (id)
);

    CREATE TABLE moves
    (
      id INT NOT NULL
      AUTO_INCREMENT,

  move VARCHAR
      (45) NOT NULL,

  typing_id INT
      (2) NOT NULL,

  power INT
      (3) NULL,

      pp INT
      (2) NOT NULL,

  PRIMARY KEY
      (id)
);

      CREATE TABLE movesets
      (
        id INT NOT NULL
        AUTO_INCREMENT,

        pokemon_id INT
        (3) NOT NULL,

        move_id INT
        (3) NOT NULL,

        PRIMARY KEY
        (id)
      );

        CREATE TABLE damage_factor
        (
          id INT NOT NULL
          AUTO_INCREMENT,

          move_type_id INT
          (2) NOT NULL,

          target_pokemon_id INT
          (2) NOT NULL,

          damage_factor INT
          (3) NOT NULL,

           PRIMARY KEY
          (id)
        );



