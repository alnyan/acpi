DefinitionBlock("bank_fields.aml", "DSDT", 1, "RSACPI", "BNKFLD", 1) {
    Name (AGRB, 0xF8000000)
    OperationRegion (A120, SystemMemory, AGRB, 0x1000)

    Field (A120, DWordAcc, Lock, Preserve) {
        Offset (0xB8),
        A121, 32
    }

    BankField (A120, A121, 0x03B10528, DWordAcc, Lock, Preserve) {
        Offset (0xBC),
        A118, 32
    }

    Method (TEST, 0, NotSerialized) {
        A118 = 1234
    }
}
