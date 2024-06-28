asm6 -l smw.asm smw.nes
certutil -hashfile smw.nes SHA256 | findstr /V ":"
