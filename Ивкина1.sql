CREATE TABLE Депо (
    номер_депо SERIAL PRIMARY KEY,
    название VARCHAR(100) NOT NULL,
    количество_парковочных_мест INT NOT NULL,
    количество_ремонтных_мест INT NOT NULL,
    адрес TEXT NOT NULL,
    контактный_телефон VARCHAR(20)
);

CREATE TABLE Пути (
    номер_депо INT NOT NULL,
    номер_пути INT NOT NULL,
    назначение VARCHAR(100) NOT NULL,
    длина_пути NUMERIC(6,2) NOT NULL,
    путь_свободен BOOLEAN NOT NULL,
    путь_электрифицирован BOOLEAN NOT NULL,
    PRIMARY KEY (номер_депо, номер_пути),
    FOREIGN KEY (номер_депо) REFERENCES Депо(номер_депо) ON UPDATE CASCADE ON DELETE CASCADE
);