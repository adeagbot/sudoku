DROP TABLE IF EXISTS ssb.peers CASCADE;

CREATE TABLE IF NOT EXISTS ssb.peers  
(
  cell          VARCHAR(6) NOT NULL,
  peer_cell     VARCHAR(6) NOT NULL,
  peer_type     VARCHAR(6) NOT NULL
);

------------------------------------

INSERT INTO ssb.peers VALUES
('A1','A2','R'),
('A1','A3','R'),
('A1','A4','R'),
('A1','A5','R'),
('A1','A6','R'),
('A1','A7','R'),
('A1','A8','R'),
('A1','A9','R'),
('A1','B1','C'),
('A1','C1','C'),
('A1','D1','C'),
('A1','E1','C'),
('A1','F1','C'),
('A1','G1','C'),
('A1','H1','C'),
('A1','I1','C'),
('A1','A2','B'),
('A1','A3','B'),
('A1','B1','B'),
('A1','B2','B'),
('A1','B3','B'),
('A1','C1','B'),
('A1','C2','B'),
('A1','C3','B'),
('A2','A1','R'),
('A2','A3','R'),
('A2','A4','R'),
('A2','A5','R'),
('A2','A6','R'),
('A2','A7','R'),
('A2','A8','R'),
('A2','A9','R'),
('A2','B2','C'),
('A2','C2','C'),
('A2','D2','C'),
('A2','E2','C'),
('A2','F2','C'),
('A2','G2','C'),
('A2','H2','C'),
('A2','I2','C'),
('A2','A1','B'),
('A2','A3','B'),
('A2','B1','B'),
('A2','B2','B'),
('A2','B3','B'),
('A2','C1','B'),
('A2','C2','B'),
('A2','C3','B'),
('A3','A1','R'),
('A3','A2','R'),
('A3','A4','R'),
('A3','A5','R'),
('A3','A6','R'),
('A3','A7','R'),
('A3','A8','R'),
('A3','A9','R'),
('A3','B3','C'),
('A3','C3','C'),
('A3','D3','C'),
('A3','E3','C'),
('A3','F3','C'),
('A3','G3','C'),
('A3','H3','C'),
('A3','I3','C'),
('A3','A1','B'),
('A3','A2','B'),
('A3','B1','B'),
('A3','B2','B'),
('A3','B3','B'),
('A3','C1','B'),
('A3','C2','B'),
('A3','C3','B'),
('A4','A1','R'),
('A4','A2','R'),
('A4','A3','R'),
('A4','A5','R'),
('A4','A6','R'),
('A4','A7','R'),
('A4','A8','R'),
('A4','A9','R'),
('A4','B4','C'),
('A4','C4','C'),
('A4','D4','C'),
('A4','E4','C'),
('A4','F4','C'),
('A4','G4','C'),
('A4','H4','C'),
('A4','I4','C'),
('A4','A5','B'),
('A4','A6','B'),
('A4','B4','B'),
('A4','B5','B'),
('A4','B6','B'),
('A4','C4','B'),
('A4','C5','B'),
('A4','C6','B'),
('A5','A1','R'),
('A5','A2','R'),
('A5','A3','R'),
('A5','A4','R'),
('A5','A6','R'),
('A5','A7','R'),
('A5','A8','R'),
('A5','A9','R'),
('A5','B5','C'),
('A5','C5','C'),
('A5','D5','C'),
('A5','E5','C'),
('A5','F5','C'),
('A5','G5','C'),
('A5','H5','C'),
('A5','I5','C'),
('A5','A4','B'),
('A5','A6','B'),
('A5','B4','B'),
('A5','B5','B'),
('A5','B6','B'),
('A5','C4','B'),
('A5','C5','B'),
('A5','C6','B'),
('A6','A1','R'),
('A6','A2','R'),
('A6','A3','R'),
('A6','A4','R'),
('A6','A5','R'),
('A6','A7','R'),
('A6','A8','R'),
('A6','A9','R'),
('A6','B6','C'),
('A6','C6','C'),
('A6','D6','C'),
('A6','E6','C'),
('A6','F6','C'),
('A6','G6','C'),
('A6','H6','C'),
('A6','I6','C'),
('A6','A4','B'),
('A6','A5','B'),
('A6','B4','B'),
('A6','B5','B'),
('A6','B6','B'),
('A6','C4','B'),
('A6','C5','B'),
('A6','C6','B'),
('A7','A1','R'),
('A7','A2','R'),
('A7','A3','R'),
('A7','A4','R'),
('A7','A5','R'),
('A7','A6','R'),
('A7','A8','R'),
('A7','A9','R'),
('A7','B7','C'),
('A7','C7','C'),
('A7','D7','C'),
('A7','E7','C'),
('A7','F7','C'),
('A7','G7','C'),
('A7','H7','C'),
('A7','I7','C'),
('A7','A8','B'),
('A7','A9','B'),
('A7','B7','B'),
('A7','B8','B'),
('A7','B9','B'),
('A7','C7','B'),
('A7','C8','B'),
('A7','C9','B'),
('A8','A1','R'),
('A8','A2','R'),
('A8','A3','R'),
('A8','A4','R'),
('A8','A5','R'),
('A8','A6','R'),
('A8','A7','R'),
('A8','A9','R'),
('A8','B8','C'),
('A8','C8','C'),
('A8','D8','C'),
('A8','E8','C'),
('A8','F8','C'),
('A8','G8','C'),
('A8','H8','C'),
('A8','I8','C'),
('A8','A7','B'),
('A8','A9','B'),
('A8','B7','B'),
('A8','B8','B'),
('A8','B9','B'),
('A8','C7','B'),
('A8','C8','B'),
('A8','C9','B'),
('A9','A1','R'),
('A9','A2','R'),
('A9','A3','R'),
('A9','A4','R'),
('A9','A5','R'),
('A9','A6','R'),
('A9','A7','R'),
('A9','A8','R'),
('A9','B9','C'),
('A9','C9','C'),
('A9','D9','C'),
('A9','E9','C'),
('A9','F9','C'),
('A9','G9','C'),
('A9','H9','C'),
('A9','I9','C'),
('A9','A7','B'),
('A9','A8','B'),
('A9','B7','B'),
('A9','B8','B'),
('A9','B9','B'),
('A9','C7','B'),
('A9','C8','B'),
('A9','C9','B'),
('B1','B2','R'),
('B1','B3','R'),
('B1','B4','R'),
('B1','B5','R'),
('B1','B6','R'),
('B1','B7','R'),
('B1','B8','R'),
('B1','B9','R'),
('B1','A1','C'),
('B1','C1','C'),
('B1','D1','C'),
('B1','E1','C'),
('B1','F1','C'),
('B1','G1','C'),
('B1','H1','C'),
('B1','I1','C'),
('B1','A1','B'),
('B1','A2','B'),
('B1','A3','B'),
('B1','B2','B'),
('B1','B3','B'),
('B1','C1','B'),
('B1','C2','B'),
('B1','C3','B'),
('B2','B1','R'),
('B2','B3','R'),
('B2','B4','R'),
('B2','B5','R'),
('B2','B6','R'),
('B2','B7','R'),
('B2','B8','R'),
('B2','B9','R'),
('B2','A2','C'),
('B2','C2','C'),
('B2','D2','C'),
('B2','E2','C'),
('B2','F2','C'),
('B2','G2','C'),
('B2','H2','C'),
('B2','I2','C'),
('B2','A1','B'),
('B2','A2','B'),
('B2','A3','B'),
('B2','B1','B'),
('B2','B3','B'),
('B2','C1','B'),
('B2','C2','B'),
('B2','C3','B'),
('B3','B1','R'),
('B3','B2','R'),
('B3','B4','R'),
('B3','B5','R'),
('B3','B6','R'),
('B3','B7','R'),
('B3','B8','R'),
('B3','B9','R'),
('B3','A3','C'),
('B3','C3','C'),
('B3','D3','C'),
('B3','E3','C'),
('B3','F3','C'),
('B3','G3','C'),
('B3','H3','C'),
('B3','I3','C'),
('B3','A1','B'),
('B3','A2','B'),
('B3','A3','B'),
('B3','B1','B'),
('B3','B2','B'),
('B3','C1','B'),
('B3','C2','B'),
('B3','C3','B'),
('B4','B1','R'),
('B4','B2','R'),
('B4','B3','R'),
('B4','B5','R'),
('B4','B6','R'),
('B4','B7','R'),
('B4','B8','R'),
('B4','B9','R'),
('B4','A4','C'),
('B4','C4','C'),
('B4','D4','C'),
('B4','E4','C'),
('B4','F4','C'),
('B4','G4','C'),
('B4','H4','C'),
('B4','I4','C'),
('B4','A4','B'),
('B4','A5','B'),
('B4','A6','B'),
('B4','B5','B'),
('B4','B6','B'),
('B4','C4','B'),
('B4','C5','B'),
('B4','C6','B'),
('B5','B1','R'),
('B5','B2','R'),
('B5','B3','R'),
('B5','B4','R'),
('B5','B6','R'),
('B5','B7','R'),
('B5','B8','R'),
('B5','B9','R'),
('B5','A5','C'),
('B5','C5','C'),
('B5','D5','C'),
('B5','E5','C'),
('B5','F5','C'),
('B5','G5','C'),
('B5','H5','C'),
('B5','I5','C'),
('B5','A4','B'),
('B5','A5','B'),
('B5','A6','B'),
('B5','B4','B'),
('B5','B6','B'),
('B5','C4','B'),
('B5','C5','B'),
('B5','C6','B'),
('B6','B1','R'),
('B6','B2','R'),
('B6','B3','R'),
('B6','B4','R'),
('B6','B5','R'),
('B6','B7','R'),
('B6','B8','R'),
('B6','B9','R'),
('B6','A6','C'),
('B6','C6','C'),
('B6','D6','C'),
('B6','E6','C'),
('B6','F6','C'),
('B6','G6','C'),
('B6','H6','C'),
('B6','I6','C'),
('B6','A4','B'),
('B6','A5','B'),
('B6','A6','B'),
('B6','B4','B'),
('B6','B5','B'),
('B6','C4','B'),
('B6','C5','B'),
('B6','C6','B'),
('B7','B1','R'),
('B7','B2','R'),
('B7','B3','R'),
('B7','B4','R'),
('B7','B5','R'),
('B7','B6','R'),
('B7','B8','R'),
('B7','B9','R'),
('B7','A7','C'),
('B7','C7','C'),
('B7','D7','C'),
('B7','E7','C'),
('B7','F7','C'),
('B7','G7','C'),
('B7','H7','C'),
('B7','I7','C'),
('B7','A7','B'),
('B7','A8','B'),
('B7','A9','B'),
('B7','B8','B'),
('B7','B9','B'),
('B7','C7','B'),
('B7','C8','B'),
('B7','C9','B'),
('B8','B1','R'),
('B8','B2','R'),
('B8','B3','R'),
('B8','B4','R'),
('B8','B5','R'),
('B8','B6','R'),
('B8','B7','R'),
('B8','B9','R'),
('B8','A8','C'),
('B8','C8','C'),
('B8','D8','C'),
('B8','E8','C'),
('B8','F8','C'),
('B8','G8','C'),
('B8','H8','C'),
('B8','I8','C'),
('B8','A7','B'),
('B8','A8','B'),
('B8','A9','B'),
('B8','B7','B'),
('B8','B9','B'),
('B8','C7','B'),
('B8','C8','B'),
('B8','C9','B'),
('B9','B1','R'),
('B9','B2','R'),
('B9','B3','R'),
('B9','B4','R'),
('B9','B5','R'),
('B9','B6','R'),
('B9','B7','R'),
('B9','B8','R'),
('B9','A9','C'),
('B9','C9','C'),
('B9','D9','C'),
('B9','E9','C'),
('B9','F9','C'),
('B9','G9','C'),
('B9','H9','C'),
('B9','I9','C'),
('B9','A7','B'),
('B9','A8','B'),
('B9','A9','B'),
('B9','B7','B'),
('B9','B8','B'),
('B9','C7','B'),
('B9','C8','B'),
('B9','C9','B'),
('C1','C2','R'),
('C1','C3','R'),
('C1','C4','R'),
('C1','C5','R'),
('C1','C6','R'),
('C1','C7','R'),
('C1','C8','R'),
('C1','C9','R'),
('C1','A1','C'),
('C1','B1','C'),
('C1','D1','C'),
('C1','E1','C'),
('C1','F1','C'),
('C1','G1','C'),
('C1','H1','C'),
('C1','I1','C'),
('C1','A1','B'),
('C1','A2','B'),
('C1','A3','B'),
('C1','B1','B'),
('C1','B2','B'),
('C1','B3','B'),
('C1','C2','B'),
('C1','C3','B'),
('C2','C1','R'),
('C2','C3','R'),
('C2','C4','R'),
('C2','C5','R'),
('C2','C6','R'),
('C2','C7','R'),
('C2','C8','R'),
('C2','C9','R'),
('C2','A2','C'),
('C2','B2','C'),
('C2','D2','C'),
('C2','E2','C'),
('C2','F2','C'),
('C2','G2','C'),
('C2','H2','C'),
('C2','I2','C'),
('C2','A1','B'),
('C2','A2','B'),
('C2','A3','B'),
('C2','B1','B'),
('C2','B2','B'),
('C2','B3','B'),
('C2','C1','B'),
('C2','C3','B'),
('C3','C1','R'),
('C3','C2','R'),
('C3','C4','R'),
('C3','C5','R'),
('C3','C6','R'),
('C3','C7','R'),
('C3','C8','R'),
('C3','C9','R'),
('C3','A3','C'),
('C3','B3','C'),
('C3','D3','C'),
('C3','E3','C'),
('C3','F3','C'),
('C3','G3','C'),
('C3','H3','C'),
('C3','I3','C'),
('C3','A1','B'),
('C3','A2','B'),
('C3','A3','B'),
('C3','B1','B'),
('C3','B2','B'),
('C3','B3','B'),
('C3','C1','B'),
('C3','C2','B'),
('C4','C1','R'),
('C4','C2','R'),
('C4','C3','R'),
('C4','C5','R'),
('C4','C6','R'),
('C4','C7','R'),
('C4','C8','R'),
('C4','C9','R'),
('C4','A4','C'),
('C4','B4','C'),
('C4','D4','C'),
('C4','E4','C'),
('C4','F4','C'),
('C4','G4','C'),
('C4','H4','C'),
('C4','I4','C'),
('C4','A4','B'),
('C4','A5','B'),
('C4','A6','B'),
('C4','B4','B'),
('C4','B5','B'),
('C4','B6','B'),
('C4','C5','B'),
('C4','C6','B'),
('C5','C1','R'),
('C5','C2','R'),
('C5','C3','R'),
('C5','C4','R'),
('C5','C6','R'),
('C5','C7','R'),
('C5','C8','R'),
('C5','C9','R'),
('C5','A5','C'),
('C5','B5','C'),
('C5','D5','C'),
('C5','E5','C'),
('C5','F5','C'),
('C5','G5','C'),
('C5','H5','C'),
('C5','I5','C'),
('C5','A4','B'),
('C5','A5','B'),
('C5','A6','B'),
('C5','B4','B'),
('C5','B5','B'),
('C5','B6','B'),
('C5','C4','B'),
('C5','C6','B'),
('C6','C1','R'),
('C6','C2','R'),
('C6','C3','R'),
('C6','C4','R'),
('C6','C5','R'),
('C6','C7','R'),
('C6','C8','R'),
('C6','C9','R'),
('C6','A6','C'),
('C6','B6','C'),
('C6','D6','C'),
('C6','E6','C'),
('C6','F6','C'),
('C6','G6','C'),
('C6','H6','C'),
('C6','I6','C'),
('C6','A4','B'),
('C6','A5','B'),
('C6','A6','B'),
('C6','B4','B'),
('C6','B5','B'),
('C6','B6','B'),
('C6','C4','B'),
('C6','C5','B'),
('C7','C1','R'),
('C7','C2','R'),
('C7','C3','R'),
('C7','C4','R'),
('C7','C5','R'),
('C7','C6','R'),
('C7','C8','R'),
('C7','C9','R'),
('C7','A7','C'),
('C7','B7','C'),
('C7','D7','C'),
('C7','E7','C'),
('C7','F7','C'),
('C7','G7','C'),
('C7','H7','C'),
('C7','I7','C'),
('C7','A7','B'),
('C7','A8','B'),
('C7','A9','B'),
('C7','B7','B'),
('C7','B8','B'),
('C7','B9','B'),
('C7','C8','B'),
('C7','C9','B'),
('C8','C1','R'),
('C8','C2','R'),
('C8','C3','R'),
('C8','C4','R'),
('C8','C5','R'),
('C8','C6','R'),
('C8','C7','R'),
('C8','C9','R'),
('C8','A8','C'),
('C8','B8','C'),
('C8','D8','C'),
('C8','E8','C'),
('C8','F8','C'),
('C8','G8','C'),
('C8','H8','C'),
('C8','I8','C'),
('C8','A7','B'),
('C8','A8','B'),
('C8','A9','B'),
('C8','B7','B'),
('C8','B8','B'),
('C8','B9','B'),
('C8','C7','B'),
('C8','C9','B'),
('C9','C1','R'),
('C9','C2','R'),
('C9','C3','R'),
('C9','C4','R'),
('C9','C5','R'),
('C9','C6','R'),
('C9','C7','R'),
('C9','C8','R'),
('C9','A9','C'),
('C9','B9','C'),
('C9','D9','C'),
('C9','E9','C'),
('C9','F9','C'),
('C9','G9','C'),
('C9','H9','C'),
('C9','I9','C'),
('C9','A7','B'),
('C9','A8','B'),
('C9','A9','B'),
('C9','B7','B'),
('C9','B8','B'),
('C9','B9','B'),
('C9','C7','B'),
('C9','C8','B'),
('D1','D2','R'),
('D1','D3','R'),
('D1','D4','R'),
('D1','D5','R'),
('D1','D6','R'),
('D1','D7','R'),
('D1','D8','R'),
('D1','D9','R'),
('D1','A1','C'),
('D1','B1','C'),
('D1','C1','C'),
('D1','E1','C'),
('D1','F1','C'),
('D1','G1','C'),
('D1','H1','C'),
('D1','I1','C'),
('D1','D2','B'),
('D1','D3','B'),
('D1','E1','B'),
('D1','E2','B'),
('D1','E3','B'),
('D1','F1','B'),
('D1','F2','B'),
('D1','F3','B'),
('D2','D1','R'),
('D2','D3','R'),
('D2','D4','R'),
('D2','D5','R'),
('D2','D6','R'),
('D2','D7','R'),
('D2','D8','R'),
('D2','D9','R'),
('D2','A2','C'),
('D2','B2','C'),
('D2','C2','C'),
('D2','E2','C'),
('D2','F2','C'),
('D2','G2','C'),
('D2','H2','C'),
('D2','I2','C'),
('D2','D1','B'),
('D2','D3','B'),
('D2','E1','B'),
('D2','E2','B'),
('D2','E3','B'),
('D2','F1','B'),
('D2','F2','B'),
('D2','F3','B'),
('D3','D1','R'),
('D3','D2','R'),
('D3','D4','R'),
('D3','D5','R'),
('D3','D6','R'),
('D3','D7','R'),
('D3','D8','R'),
('D3','D9','R'),
('D3','A3','C'),
('D3','B3','C'),
('D3','C3','C'),
('D3','E3','C'),
('D3','F3','C'),
('D3','G3','C'),
('D3','H3','C'),
('D3','I3','C'),
('D3','D1','B'),
('D3','D2','B'),
('D3','E1','B'),
('D3','E2','B'),
('D3','E3','B'),
('D3','F1','B'),
('D3','F2','B'),
('D3','F3','B'),
('D4','D1','R'),
('D4','D2','R'),
('D4','D3','R'),
('D4','D5','R'),
('D4','D6','R'),
('D4','D7','R'),
('D4','D8','R'),
('D4','D9','R'),
('D4','A4','C'),
('D4','B4','C'),
('D4','C4','C'),
('D4','E4','C'),
('D4','F4','C'),
('D4','G4','C'),
('D4','H4','C'),
('D4','I4','C'),
('D4','D5','B'),
('D4','D6','B'),
('D4','E4','B'),
('D4','E5','B'),
('D4','E6','B'),
('D4','F4','B'),
('D4','F5','B'),
('D4','F6','B'),
('D5','D1','R'),
('D5','D2','R'),
('D5','D3','R'),
('D5','D4','R'),
('D5','D6','R'),
('D5','D7','R'),
('D5','D8','R'),
('D5','D9','R'),
('D5','A5','C'),
('D5','B5','C'),
('D5','C5','C'),
('D5','E5','C'),
('D5','F5','C'),
('D5','G5','C'),
('D5','H5','C'),
('D5','I5','C'),
('D5','D4','B'),
('D5','D6','B'),
('D5','E4','B'),
('D5','E5','B'),
('D5','E6','B'),
('D5','F4','B'),
('D5','F5','B'),
('D5','F6','B'),
('D6','D1','R'),
('D6','D2','R'),
('D6','D3','R'),
('D6','D4','R'),
('D6','D5','R'),
('D6','D7','R'),
('D6','D8','R'),
('D6','D9','R'),
('D6','A6','C'),
('D6','B6','C'),
('D6','C6','C'),
('D6','E6','C'),
('D6','F6','C'),
('D6','G6','C'),
('D6','H6','C'),
('D6','I6','C'),
('D6','D4','B'),
('D6','D5','B'),
('D6','E4','B'),
('D6','E5','B'),
('D6','E6','B'),
('D6','F4','B'),
('D6','F5','B'),
('D6','F6','B'),
('D7','D1','R'),
('D7','D2','R'),
('D7','D3','R'),
('D7','D4','R'),
('D7','D5','R'),
('D7','D6','R'),
('D7','D8','R'),
('D7','D9','R'),
('D7','A7','C'),
('D7','B7','C'),
('D7','C7','C'),
('D7','E7','C'),
('D7','F7','C'),
('D7','G7','C'),
('D7','H7','C'),
('D7','I7','C'),
('D7','D8','B'),
('D7','D9','B'),
('D7','E7','B'),
('D7','E8','B'),
('D7','E9','B'),
('D7','F7','B'),
('D7','F8','B'),
('D7','F9','B'),
('D8','D1','R'),
('D8','D2','R'),
('D8','D3','R'),
('D8','D4','R'),
('D8','D5','R'),
('D8','D6','R'),
('D8','D7','R'),
('D8','D9','R'),
('D8','A8','C'),
('D8','B8','C'),
('D8','C8','C'),
('D8','E8','C'),
('D8','F8','C'),
('D8','G8','C'),
('D8','H8','C'),
('D8','I8','C'),
('D8','D7','B'),
('D8','D9','B'),
('D8','E7','B'),
('D8','E8','B'),
('D8','E9','B'),
('D8','F7','B'),
('D8','F8','B'),
('D8','F9','B'),
('D9','D1','R'),
('D9','D2','R'),
('D9','D3','R'),
('D9','D4','R'),
('D9','D5','R'),
('D9','D6','R'),
('D9','D7','R'),
('D9','D8','R'),
('D9','A9','C'),
('D9','B9','C'),
('D9','C9','C'),
('D9','E9','C'),
('D9','F9','C'),
('D9','G9','C'),
('D9','H9','C'),
('D9','I9','C'),
('D9','D7','B'),
('D9','D8','B'),
('D9','E7','B'),
('D9','E8','B'),
('D9','E9','B'),
('D9','F7','B'),
('D9','F8','B'),
('D9','F9','B'),
('E1','E2','R'),
('E1','E3','R'),
('E1','E4','R'),
('E1','E5','R'),
('E1','E6','R'),
('E1','E7','R'),
('E1','E8','R'),
('E1','E9','R'),
('E1','A1','C'),
('E1','B1','C'),
('E1','C1','C'),
('E1','D1','C'),
('E1','F1','C'),
('E1','G1','C'),
('E1','H1','C'),
('E1','I1','C'),
('E1','D1','B'),
('E1','D2','B'),
('E1','D3','B'),
('E1','E2','B'),
('E1','E3','B'),
('E1','F1','B'),
('E1','F2','B'),
('E1','F3','B'),
('E2','E1','R'),
('E2','E3','R'),
('E2','E4','R'),
('E2','E5','R'),
('E2','E6','R'),
('E2','E7','R'),
('E2','E8','R'),
('E2','E9','R'),
('E2','A2','C'),
('E2','B2','C'),
('E2','C2','C'),
('E2','D2','C'),
('E2','F2','C'),
('E2','G2','C'),
('E2','H2','C'),
('E2','I2','C'),
('E2','D1','B'),
('E2','D2','B'),
('E2','D3','B'),
('E2','E1','B'),
('E2','E3','B'),
('E2','F1','B'),
('E2','F2','B'),
('E2','F3','B'),
('E3','E1','R'),
('E3','E2','R'),
('E3','E4','R'),
('E3','E5','R'),
('E3','E6','R'),
('E3','E7','R'),
('E3','E8','R'),
('E3','E9','R'),
('E3','A3','C'),
('E3','B3','C'),
('E3','C3','C'),
('E3','D3','C'),
('E3','F3','C'),
('E3','G3','C'),
('E3','H3','C'),
('E3','I3','C'),
('E3','D1','B'),
('E3','D2','B'),
('E3','D3','B'),
('E3','E1','B'),
('E3','E2','B'),
('E3','F1','B'),
('E3','F2','B'),
('E3','F3','B'),
('E4','E1','R'),
('E4','E2','R'),
('E4','E3','R'),
('E4','E5','R'),
('E4','E6','R'),
('E4','E7','R'),
('E4','E8','R'),
('E4','E9','R'),
('E4','A4','C'),
('E4','B4','C'),
('E4','C4','C'),
('E4','D4','C'),
('E4','F4','C'),
('E4','G4','C'),
('E4','H4','C'),
('E4','I4','C'),
('E4','D4','B'),
('E4','D5','B'),
('E4','D6','B'),
('E4','E5','B'),
('E4','E6','B'),
('E4','F4','B'),
('E4','F5','B'),
('E4','F6','B'),
('E5','E1','R'),
('E5','E2','R'),
('E5','E3','R'),
('E5','E4','R'),
('E5','E6','R'),
('E5','E7','R'),
('E5','E8','R'),
('E5','E9','R'),
('E5','A5','C'),
('E5','B5','C'),
('E5','C5','C'),
('E5','D5','C'),
('E5','F5','C'),
('E5','G5','C'),
('E5','H5','C'),
('E5','I5','C'),
('E5','D4','B'),
('E5','D5','B'),
('E5','D6','B'),
('E5','E4','B'),
('E5','E6','B'),
('E5','F4','B'),
('E5','F5','B'),
('E5','F6','B'),
('E6','E1','R'),
('E6','E2','R'),
('E6','E3','R'),
('E6','E4','R'),
('E6','E5','R'),
('E6','E7','R'),
('E6','E8','R'),
('E6','E9','R'),
('E6','A6','C'),
('E6','B6','C'),
('E6','C6','C'),
('E6','D6','C'),
('E6','F6','C'),
('E6','G6','C'),
('E6','H6','C'),
('E6','I6','C'),
('E6','D4','B'),
('E6','D5','B'),
('E6','D6','B'),
('E6','E4','B'),
('E6','E5','B'),
('E6','F4','B'),
('E6','F5','B'),
('E6','F6','B'),
('E7','E1','R'),
('E7','E2','R'),
('E7','E3','R'),
('E7','E4','R'),
('E7','E5','R'),
('E7','E6','R'),
('E7','E8','R'),
('E7','E9','R'),
('E7','A7','C'),
('E7','B7','C'),
('E7','C7','C'),
('E7','D7','C'),
('E7','F7','C'),
('E7','G7','C'),
('E7','H7','C'),
('E7','I7','C'),
('E7','D7','B'),
('E7','D8','B'),
('E7','D9','B'),
('E7','E8','B'),
('E7','E9','B'),
('E7','F7','B'),
('E7','F8','B'),
('E7','F9','B'),
('E8','E1','R'),
('E8','E2','R'),
('E8','E3','R'),
('E8','E4','R'),
('E8','E5','R'),
('E8','E6','R'),
('E8','E7','R'),
('E8','E9','R'),
('E8','A8','C'),
('E8','B8','C'),
('E8','C8','C'),
('E8','D8','C'),
('E8','F8','C'),
('E8','G8','C'),
('E8','H8','C'),
('E8','I8','C'),
('E8','D7','B'),
('E8','D8','B'),
('E8','D9','B'),
('E8','E7','B'),
('E8','E9','B'),
('E8','F7','B'),
('E8','F8','B'),
('E8','F9','B'),
('E9','E1','R'),
('E9','E2','R'),
('E9','E3','R'),
('E9','E4','R'),
('E9','E5','R'),
('E9','E6','R'),
('E9','E7','R'),
('E9','E8','R'),
('E9','A9','C'),
('E9','B9','C'),
('E9','C9','C'),
('E9','D9','C'),
('E9','F9','C'),
('E9','G9','C'),
('E9','H9','C'),
('E9','I9','C'),
('E9','D7','B'),
('E9','D8','B'),
('E9','D9','B'),
('E9','E7','B'),
('E9','E8','B'),
('E9','F7','B'),
('E9','F8','B'),
('E9','F9','B'),
('F1','F2','R'),
('F1','F3','R'),
('F1','F4','R'),
('F1','F5','R'),
('F1','F6','R'),
('F1','F7','R'),
('F1','F8','R'),
('F1','F9','R'),
('F1','A1','C'),
('F1','B1','C'),
('F1','C1','C'),
('F1','D1','C'),
('F1','E1','C'),
('F1','G1','C'),
('F1','H1','C'),
('F1','I1','C'),
('F1','D1','B'),
('F1','D2','B'),
('F1','D3','B'),
('F1','E1','B'),
('F1','E2','B'),
('F1','E3','B'),
('F1','F2','B'),
('F1','F3','B'),
('F2','F1','R'),
('F2','F3','R'),
('F2','F4','R'),
('F2','F5','R'),
('F2','F6','R'),
('F2','F7','R'),
('F2','F8','R'),
('F2','F9','R'),
('F2','A2','C'),
('F2','B2','C'),
('F2','C2','C'),
('F2','D2','C'),
('F2','E2','C'),
('F2','G2','C'),
('F2','H2','C'),
('F2','I2','C'),
('F2','D1','B'),
('F2','D2','B'),
('F2','D3','B'),
('F2','E1','B'),
('F2','E2','B'),
('F2','E3','B'),
('F2','F1','B'),
('F2','F3','B'),
('F3','F1','R'),
('F3','F2','R'),
('F3','F4','R'),
('F3','F5','R'),
('F3','F6','R'),
('F3','F7','R'),
('F3','F8','R'),
('F3','F9','R'),
('F3','A3','C'),
('F3','B3','C'),
('F3','C3','C'),
('F3','D3','C'),
('F3','E3','C'),
('F3','G3','C'),
('F3','H3','C'),
('F3','I3','C'),
('F3','D1','B'),
('F3','D2','B'),
('F3','D3','B'),
('F3','E1','B'),
('F3','E2','B'),
('F3','E3','B'),
('F3','F1','B'),
('F3','F2','B'),
('F4','F1','R'),
('F4','F2','R'),
('F4','F3','R'),
('F4','F5','R'),
('F4','F6','R'),
('F4','F7','R'),
('F4','F8','R'),
('F4','F9','R'),
('F4','A4','C'),
('F4','B4','C'),
('F4','C4','C'),
('F4','D4','C'),
('F4','E4','C'),
('F4','G4','C'),
('F4','H4','C'),
('F4','I4','C'),
('F4','D4','B'),
('F4','D5','B'),
('F4','D6','B'),
('F4','E4','B'),
('F4','E5','B'),
('F4','E6','B'),
('F4','F5','B'),
('F4','F6','B'),
('F5','F1','R'),
('F5','F2','R'),
('F5','F3','R'),
('F5','F4','R'),
('F5','F6','R'),
('F5','F7','R'),
('F5','F8','R'),
('F5','F9','R'),
('F5','A5','C'),
('F5','B5','C'),
('F5','C5','C'),
('F5','D5','C'),
('F5','E5','C'),
('F5','G5','C'),
('F5','H5','C'),
('F5','I5','C'),
('F5','D4','B'),
('F5','D5','B'),
('F5','D6','B'),
('F5','E4','B'),
('F5','E5','B'),
('F5','E6','B'),
('F5','F4','B'),
('F5','F6','B'),
('F6','F1','R'),
('F6','F2','R'),
('F6','F3','R'),
('F6','F4','R'),
('F6','F5','R'),
('F6','F7','R'),
('F6','F8','R'),
('F6','F9','R'),
('F6','A6','C'),
('F6','B6','C'),
('F6','C6','C'),
('F6','D6','C'),
('F6','E6','C'),
('F6','G6','C'),
('F6','H6','C'),
('F6','I6','C'),
('F6','D4','B'),
('F6','D5','B'),
('F6','D6','B'),
('F6','E4','B'),
('F6','E5','B'),
('F6','E6','B'),
('F6','F4','B'),
('F6','F5','B'),
('F7','F1','R'),
('F7','F2','R'),
('F7','F3','R'),
('F7','F4','R'),
('F7','F5','R'),
('F7','F6','R'),
('F7','F8','R'),
('F7','F9','R'),
('F7','A7','C'),
('F7','B7','C'),
('F7','C7','C'),
('F7','D7','C'),
('F7','E7','C'),
('F7','G7','C'),
('F7','H7','C'),
('F7','I7','C'),
('F7','D7','B'),
('F7','D8','B'),
('F7','D9','B'),
('F7','E7','B'),
('F7','E8','B'),
('F7','E9','B'),
('F7','F8','B'),
('F7','F9','B'),
('F8','F1','R'),
('F8','F2','R'),
('F8','F3','R'),
('F8','F4','R'),
('F8','F5','R'),
('F8','F6','R'),
('F8','F7','R'),
('F8','F9','R'),
('F8','A8','C'),
('F8','B8','C'),
('F8','C8','C'),
('F8','D8','C'),
('F8','E8','C'),
('F8','G8','C'),
('F8','H8','C'),
('F8','I8','C'),
('F8','D7','B'),
('F8','D8','B'),
('F8','D9','B'),
('F8','E7','B'),
('F8','E8','B'),
('F8','E9','B'),
('F8','F7','B'),
('F8','F9','B'),
('F9','F1','R'),
('F9','F2','R'),
('F9','F3','R'),
('F9','F4','R'),
('F9','F5','R'),
('F9','F6','R'),
('F9','F7','R'),
('F9','F8','R'),
('F9','A9','C'),
('F9','B9','C'),
('F9','C9','C'),
('F9','D9','C'),
('F9','E9','C'),
('F9','G9','C'),
('F9','H9','C'),
('F9','I9','C'),
('F9','D7','B'),
('F9','D8','B'),
('F9','D9','B'),
('F9','E7','B'),
('F9','E8','B'),
('F9','E9','B'),
('F9','F7','B'),
('F9','F8','B'),
('G1','G2','R'),
('G1','G3','R'),
('G1','G4','R'),
('G1','G5','R'),
('G1','G6','R'),
('G1','G7','R'),
('G1','G8','R'),
('G1','G9','R'),
('G1','A1','C'),
('G1','B1','C'),
('G1','C1','C'),
('G1','D1','C'),
('G1','E1','C'),
('G1','F1','C'),
('G1','H1','C'),
('G1','I1','C'),
('G1','G2','B'),
('G1','G3','B'),
('G1','H1','B'),
('G1','H2','B'),
('G1','H3','B'),
('G1','I1','B'),
('G1','I2','B'),
('G1','I3','B'),
('G2','G1','R'),
('G2','G3','R'),
('G2','G4','R'),
('G2','G5','R'),
('G2','G6','R'),
('G2','G7','R'),
('G2','G8','R'),
('G2','G9','R'),
('G2','A2','C'),
('G2','B2','C'),
('G2','C2','C'),
('G2','D2','C'),
('G2','E2','C'),
('G2','F2','C'),
('G2','H2','C'),
('G2','I2','C'),
('G2','G1','B'),
('G2','G3','B'),
('G2','H1','B'),
('G2','H2','B'),
('G2','H3','B'),
('G2','I1','B'),
('G2','I2','B'),
('G2','I3','B'),
('G3','G1','R'),
('G3','G2','R'),
('G3','G4','R'),
('G3','G5','R'),
('G3','G6','R'),
('G3','G7','R'),
('G3','G8','R'),
('G3','G9','R'),
('G3','A3','C'),
('G3','B3','C'),
('G3','C3','C'),
('G3','D3','C'),
('G3','E3','C'),
('G3','F3','C'),
('G3','H3','C'),
('G3','I3','C'),
('G3','G1','B'),
('G3','G2','B'),
('G3','H1','B'),
('G3','H2','B'),
('G3','H3','B'),
('G3','I1','B'),
('G3','I2','B'),
('G3','I3','B'),
('G4','G1','R'),
('G4','G2','R'),
('G4','G3','R'),
('G4','G5','R'),
('G4','G6','R'),
('G4','G7','R'),
('G4','G8','R'),
('G4','G9','R'),
('G4','A4','C'),
('G4','B4','C'),
('G4','C4','C'),
('G4','D4','C'),
('G4','E4','C'),
('G4','F4','C'),
('G4','H4','C'),
('G4','I4','C'),
('G4','G5','B'),
('G4','G6','B'),
('G4','H4','B'),
('G4','H5','B'),
('G4','H6','B'),
('G4','I4','B'),
('G4','I5','B'),
('G4','I6','B'),
('G5','G1','R'),
('G5','G2','R'),
('G5','G3','R'),
('G5','G4','R'),
('G5','G6','R'),
('G5','G7','R'),
('G5','G8','R'),
('G5','G9','R'),
('G5','A5','C'),
('G5','B5','C'),
('G5','C5','C'),
('G5','D5','C'),
('G5','E5','C'),
('G5','F5','C'),
('G5','H5','C'),
('G5','I5','C'),
('G5','G4','B'),
('G5','G6','B'),
('G5','H4','B'),
('G5','H5','B'),
('G5','H6','B'),
('G5','I4','B'),
('G5','I5','B'),
('G5','I6','B'),
('G6','G1','R'),
('G6','G2','R'),
('G6','G3','R'),
('G6','G4','R'),
('G6','G5','R'),
('G6','G7','R'),
('G6','G8','R'),
('G6','G9','R'),
('G6','A6','C'),
('G6','B6','C'),
('G6','C6','C'),
('G6','D6','C'),
('G6','E6','C'),
('G6','F6','C'),
('G6','H6','C'),
('G6','I6','C'),
('G6','G4','B'),
('G6','G5','B'),
('G6','H4','B'),
('G6','H5','B'),
('G6','H6','B'),
('G6','I4','B'),
('G6','I5','B'),
('G6','I6','B'),
('G7','G1','R'),
('G7','G2','R'),
('G7','G3','R'),
('G7','G4','R'),
('G7','G5','R'),
('G7','G6','R'),
('G7','G8','R'),
('G7','G9','R'),
('G7','A7','C'),
('G7','B7','C'),
('G7','C7','C'),
('G7','D7','C'),
('G7','E7','C'),
('G7','F7','C'),
('G7','H7','C'),
('G7','I7','C'),
('G7','G8','B'),
('G7','G9','B'),
('G7','H7','B'),
('G7','H8','B'),
('G7','H9','B'),
('G7','I7','B'),
('G7','I8','B'),
('G7','I9','B'),
('G8','G1','R'),
('G8','G2','R'),
('G8','G3','R'),
('G8','G4','R'),
('G8','G5','R'),
('G8','G6','R'),
('G8','G7','R'),
('G8','G9','R'),
('G8','A8','C'),
('G8','B8','C'),
('G8','C8','C'),
('G8','D8','C'),
('G8','E8','C'),
('G8','F8','C'),
('G8','H8','C'),
('G8','I8','C'),
('G8','G7','B'),
('G8','G9','B'),
('G8','H7','B'),
('G8','H8','B'),
('G8','H9','B'),
('G8','I7','B'),
('G8','I8','B'),
('G8','I9','B'),
('G9','G1','R'),
('G9','G2','R'),
('G9','G3','R'),
('G9','G4','R'),
('G9','G5','R'),
('G9','G6','R'),
('G9','G7','R'),
('G9','G8','R'),
('G9','A9','C'),
('G9','B9','C'),
('G9','C9','C'),
('G9','D9','C'),
('G9','E9','C'),
('G9','F9','C'),
('G9','H9','C'),
('G9','I9','C'),
('G9','G7','B'),
('G9','G8','B'),
('G9','H7','B'),
('G9','H8','B'),
('G9','H9','B'),
('G9','I7','B'),
('G9','I8','B'),
('G9','I9','B'),
('H1','H2','R'),
('H1','H3','R'),
('H1','H4','R'),
('H1','H5','R'),
('H1','H6','R'),
('H1','H7','R'),
('H1','H8','R'),
('H1','H9','R'),
('H1','A1','C'),
('H1','B1','C'),
('H1','C1','C'),
('H1','D1','C'),
('H1','E1','C'),
('H1','F1','C'),
('H1','G1','C'),
('H1','I1','C'),
('H1','G1','B'),
('H1','G2','B'),
('H1','G3','B'),
('H1','H2','B'),
('H1','H3','B'),
('H1','I1','B'),
('H1','I2','B'),
('H1','I3','B'),
('H2','H1','R'),
('H2','H3','R'),
('H2','H4','R'),
('H2','H5','R'),
('H2','H6','R'),
('H2','H7','R'),
('H2','H8','R'),
('H2','H9','R'),
('H2','A2','C'),
('H2','B2','C'),
('H2','C2','C'),
('H2','D2','C'),
('H2','E2','C'),
('H2','F2','C'),
('H2','G2','C'),
('H2','I2','C'),
('H2','G1','B'),
('H2','G2','B'),
('H2','G3','B'),
('H2','H1','B'),
('H2','H3','B'),
('H2','I1','B'),
('H2','I2','B'),
('H2','I3','B'),
('H3','H1','R'),
('H3','H2','R'),
('H3','H4','R'),
('H3','H5','R'),
('H3','H6','R'),
('H3','H7','R'),
('H3','H8','R'),
('H3','H9','R'),
('H3','A3','C'),
('H3','B3','C'),
('H3','C3','C'),
('H3','D3','C'),
('H3','E3','C'),
('H3','F3','C'),
('H3','G3','C'),
('H3','I3','C'),
('H3','G1','B'),
('H3','G2','B'),
('H3','G3','B'),
('H3','H1','B'),
('H3','H2','B'),
('H3','I1','B'),
('H3','I2','B'),
('H3','I3','B'),
('H4','H1','R'),
('H4','H2','R'),
('H4','H3','R'),
('H4','H5','R'),
('H4','H6','R'),
('H4','H7','R'),
('H4','H8','R'),
('H4','H9','R'),
('H4','A4','C'),
('H4','B4','C'),
('H4','C4','C'),
('H4','D4','C'),
('H4','E4','C'),
('H4','F4','C'),
('H4','G4','C'),
('H4','I4','C'),
('H4','G4','B'),
('H4','G5','B'),
('H4','G6','B'),
('H4','H5','B'),
('H4','H6','B'),
('H4','I4','B'),
('H4','I5','B'),
('H4','I6','B'),
('H5','H1','R'),
('H5','H2','R'),
('H5','H3','R'),
('H5','H4','R'),
('H5','H6','R'),
('H5','H7','R'),
('H5','H8','R'),
('H5','H9','R'),
('H5','A5','C'),
('H5','B5','C'),
('H5','C5','C'),
('H5','D5','C'),
('H5','E5','C'),
('H5','F5','C'),
('H5','G5','C'),
('H5','I5','C'),
('H5','G4','B'),
('H5','G5','B'),
('H5','G6','B'),
('H5','H4','B'),
('H5','H6','B'),
('H5','I4','B'),
('H5','I5','B'),
('H5','I6','B'),
('H6','H1','R'),
('H6','H2','R'),
('H6','H3','R'),
('H6','H4','R'),
('H6','H5','R'),
('H6','H7','R'),
('H6','H8','R'),
('H6','H9','R'),
('H6','A6','C'),
('H6','B6','C'),
('H6','C6','C'),
('H6','D6','C'),
('H6','E6','C'),
('H6','F6','C'),
('H6','G6','C'),
('H6','I6','C'),
('H6','G4','B'),
('H6','G5','B'),
('H6','G6','B'),
('H6','H4','B'),
('H6','H5','B'),
('H6','I4','B'),
('H6','I5','B'),
('H6','I6','B'),
('H7','H1','R'),
('H7','H2','R'),
('H7','H3','R'),
('H7','H4','R'),
('H7','H5','R'),
('H7','H6','R'),
('H7','H8','R'),
('H7','H9','R'),
('H7','A7','C'),
('H7','B7','C'),
('H7','C7','C'),
('H7','D7','C'),
('H7','E7','C'),
('H7','F7','C'),
('H7','G7','C'),
('H7','I7','C'),
('H7','G7','B'),
('H7','G8','B'),
('H7','G9','B'),
('H7','H8','B'),
('H7','H9','B'),
('H7','I7','B'),
('H7','I8','B'),
('H7','I9','B'),
('H8','H1','R'),
('H8','H2','R'),
('H8','H3','R'),
('H8','H4','R'),
('H8','H5','R'),
('H8','H6','R'),
('H8','H7','R'),
('H8','H9','R'),
('H8','A8','C'),
('H8','B8','C'),
('H8','C8','C'),
('H8','D8','C'),
('H8','E8','C'),
('H8','F8','C'),
('H8','G8','C'),
('H8','I8','C'),
('H8','G7','B'),
('H8','G8','B'),
('H8','G9','B'),
('H8','H7','B'),
('H8','H9','B'),
('H8','I7','B'),
('H8','I8','B'),
('H8','I9','B'),
('H9','H1','R'),
('H9','H2','R'),
('H9','H3','R'),
('H9','H4','R'),
('H9','H5','R'),
('H9','H6','R'),
('H9','H7','R'),
('H9','H8','R'),
('H9','A9','C'),
('H9','B9','C'),
('H9','C9','C'),
('H9','D9','C'),
('H9','E9','C'),
('H9','F9','C'),
('H9','G9','C'),
('H9','I9','C'),
('H9','G7','B'),
('H9','G8','B'),
('H9','G9','B'),
('H9','H7','B'),
('H9','H8','B'),
('H9','I7','B'),
('H9','I8','B'),
('H9','I9','B'),
('I1','I2','R'),
('I1','I3','R'),
('I1','I4','R'),
('I1','I5','R'),
('I1','I6','R'),
('I1','I7','R'),
('I1','I8','R'),
('I1','I9','R'),
('I1','A1','C'),
('I1','B1','C'),
('I1','C1','C'),
('I1','D1','C'),
('I1','E1','C'),
('I1','F1','C'),
('I1','G1','C'),
('I1','H1','C'),
('I1','G1','B'),
('I1','G2','B'),
('I1','G3','B'),
('I1','H1','B'),
('I1','H2','B'),
('I1','H3','B'),
('I1','I2','B'),
('I1','I3','B'),
('I2','I1','R'),
('I2','I3','R'),
('I2','I4','R'),
('I2','I5','R'),
('I2','I6','R'),
('I2','I7','R'),
('I2','I8','R'),
('I2','I9','R'),
('I2','A2','C'),
('I2','B2','C'),
('I2','C2','C'),
('I2','D2','C'),
('I2','E2','C'),
('I2','F2','C'),
('I2','G2','C'),
('I2','H2','C'),
('I2','G1','B'),
('I2','G2','B'),
('I2','G3','B'),
('I2','H1','B'),
('I2','H2','B'),
('I2','H3','B'),
('I2','I1','B'),
('I2','I3','B'),
('I3','I1','R'),
('I3','I2','R'),
('I3','I4','R'),
('I3','I5','R'),
('I3','I6','R'),
('I3','I7','R'),
('I3','I8','R'),
('I3','I9','R'),
('I3','A3','C'),
('I3','B3','C'),
('I3','C3','C'),
('I3','D3','C'),
('I3','E3','C'),
('I3','F3','C'),
('I3','G3','C'),
('I3','H3','C'),
('I3','G1','B'),
('I3','G2','B'),
('I3','G3','B'),
('I3','H1','B'),
('I3','H2','B'),
('I3','H3','B'),
('I3','I1','B'),
('I3','I2','B'),
('I4','I1','R'),
('I4','I2','R'),
('I4','I3','R'),
('I4','I5','R'),
('I4','I6','R'),
('I4','I7','R'),
('I4','I8','R'),
('I4','I9','R'),
('I4','A4','C'),
('I4','B4','C'),
('I4','C4','C'),
('I4','D4','C'),
('I4','E4','C'),
('I4','F4','C'),
('I4','G4','C'),
('I4','H4','C'),
('I4','G4','B'),
('I4','G5','B'),
('I4','G6','B'),
('I4','H4','B'),
('I4','H5','B'),
('I4','H6','B'),
('I4','I5','B'),
('I4','I6','B'),
('I5','I1','R'),
('I5','I2','R'),
('I5','I3','R'),
('I5','I4','R'),
('I5','I6','R'),
('I5','I7','R'),
('I5','I8','R'),
('I5','I9','R'),
('I5','A5','C'),
('I5','B5','C'),
('I5','C5','C'),
('I5','D5','C'),
('I5','E5','C'),
('I5','F5','C'),
('I5','G5','C'),
('I5','H5','C'),
('I5','G4','B'),
('I5','G5','B'),
('I5','G6','B'),
('I5','H4','B'),
('I5','H5','B'),
('I5','H6','B'),
('I5','I4','B'),
('I5','I6','B'),
('I6','I1','R'),
('I6','I2','R'),
('I6','I3','R'),
('I6','I4','R'),
('I6','I5','R'),
('I6','I7','R'),
('I6','I8','R'),
('I6','I9','R'),
('I6','A6','C'),
('I6','B6','C'),
('I6','C6','C'),
('I6','D6','C'),
('I6','E6','C'),
('I6','F6','C'),
('I6','G6','C'),
('I6','H6','C'),
('I6','G4','B'),
('I6','G5','B'),
('I6','G6','B'),
('I6','H4','B'),
('I6','H5','B'),
('I6','H6','B'),
('I6','I4','B'),
('I6','I5','B'),
('I7','I1','R'),
('I7','I2','R'),
('I7','I3','R'),
('I7','I4','R'),
('I7','I5','R'),
('I7','I6','R'),
('I7','I8','R'),
('I7','I9','R'),
('I7','A7','C'),
('I7','B7','C'),
('I7','C7','C'),
('I7','D7','C'),
('I7','E7','C'),
('I7','F7','C'),
('I7','G7','C'),
('I7','H7','C'),
('I7','G7','B'),
('I7','G8','B'),
('I7','G9','B'),
('I7','H7','B'),
('I7','H8','B'),
('I7','H9','B'),
('I7','I8','B'),
('I7','I9','B'),
('I8','I1','R'),
('I8','I2','R'),
('I8','I3','R'),
('I8','I4','R'),
('I8','I5','R'),
('I8','I6','R'),
('I8','I7','R'),
('I8','I9','R'),
('I8','A8','C'),
('I8','B8','C'),
('I8','C8','C'),
('I8','D8','C'),
('I8','E8','C'),
('I8','F8','C'),
('I8','G8','C'),
('I8','H8','C'),
('I8','G7','B'),
('I8','G8','B'),
('I8','G9','B'),
('I8','H7','B'),
('I8','H8','B'),
('I8','H9','B'),
('I8','I7','B'),
('I8','I9','B'),
('I9','I1','R'),
('I9','I2','R'),
('I9','I3','R'),
('I9','I4','R'),
('I9','I5','R'),
('I9','I6','R'),
('I9','I7','R'),
('I9','I8','R'),
('I9','A9','C'),
('I9','B9','C'),
('I9','C9','C'),
('I9','D9','C'),
('I9','E9','C'),
('I9','F9','C'),
('I9','G9','C'),
('I9','H9','C'),
('I9','G7','B'),
('I9','G8','B'),
('I9','G9','B'),
('I9','H7','B'),
('I9','H8','B'),
('I9','H9','B'),
('I9','I7','B'),
('I9','I8','B');