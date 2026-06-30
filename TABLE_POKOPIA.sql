
CREATE TABLE Environment(
    Name TEXT,
    EnvId INTEGER PRIMARY KEY
);

CREATE TABLE Habitat(
    Name TEXT,
    HabId INTEGER PRIMARY KEY    
);

CREATE TABLE Food(
    Name TEXT,
    FoodId INTEGER PRIMARY KEY    
);

CREATE TABLE Speciality(
    Name TEXT,
    SpeId INTEGER PRIMARY KEY    
);

CREATE TABLE Affinity(
    Name TEXT,
    AffId INTEGER PRIMARY KEY
);

CREATE TABLE IncompatibleEnvironment(
    EnvA INTEGER,
    EnvB INTEGER,
    FOREIGN KEY(EnvA) REFERENCES Environment(EnvId),
    FOREIGN KEY(EnvB) REFERENCES Environment(EnvId),
    PRIMARY KEY(EnvA, EnvB)
);

CREATE TABLE Pokemon(
    Name TEXT,
    PokId INTEGER PRIMARY KEY,
    Sprite TEXT
);

CREATE TABLE AffinityMap(
    PokId INTEGER,
    AffId INTEGER,
    Score INTEGER,
    PRIMARY KEY (PokId, AffId),
    FOREIGN KEY(PokId) REFERENCES Pokemon(PokId),
    FOREIGN KEY(AffId) REFERENCES Affinity(AffId)
);


CREATE TABLE SpecialityMap(
    PokId INTEGER,
    SpeId INTEGER,
    PRIMARY KEY (PokId, SpeId),
    FOREIGN KEY(PokId) REFERENCES Pokemon(PokId),
    FOREIGN KEY(SpeId) REFERENCES Speciality(SpeId)
);


CREATE TABLE HabitatMap(
    PokId INTEGER,
    HabId INTEGER,
    PRIMARY KEY (PokId, HabId),
    FOREIGN KEY(PokId) REFERENCES Pokemon(PokId),
    FOREIGN KEY(HabId) REFERENCES Habitat(HabId)
);


CREATE TABLE EnvironmentMap(
    PokId INTEGER,
    EnvId INTEGER,
    PRIMARY KEY (PokId, EnvId),
    FOREIGN KEY(PokId) REFERENCES Pokemon(PokId),
    FOREIGN KEY(EnvId) REFERENCES Environment(EnvId)
);


CREATE TABLE FoodMap(
    PokId INTEGER,
    FoodId INTEGER,
    PRIMARY KEY (PokId, FoodId),
    FOREIGN KEY(PokId) REFERENCES Pokemon(PokId),
    FOREIGN KEY(FoodId) REFERENCES Food(FoodId)
);