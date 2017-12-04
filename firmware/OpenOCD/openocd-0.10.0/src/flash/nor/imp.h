/***************************************************************************
 *   Copyright (C) 2009 Zachary T Welch <zw@superlucidity.net>             *
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 *   This program is distributed in the hope that it will be useful,       *
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 *   GNU General Public License for more details.                          *
 *                                                                         *
 *   You should have received a copy of the GNU General Public License     *
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>. *
 ***************************************************************************/

#ifndef OPENOCD_FLASH_NOR_IMP_H
#define OPENOCD_FLASH_NOR_IMP_H

/* this is an internal header */
#include "core.h"
#include "driver.h"
/* almost all drivers will need this file */
#include <target/target.h>

/**
 * Adds a new NOR bank to the global list of banks.
 * @param bank The bank that should be added.
 */
void flash_bank_add(struct flash_bank *bank);

/**
 * @return The first bank in the global list.
 */
struct flash_bank *flash_bank_list(void);

int flash_driver_erase(struct flash_bank *bank, int first, int last);
int flash_driver_protect(struct flash_bank *bank, int set, int first, int last);
int flash_driver_write(struct flash_bank *bank,
		uint8_t *buffer, uint32_t offset, uint32_t count);
int flash_driver_read(struct flash_bank *bank,
		uint8_t *buffer, uint32_t offset, uint32_t count);

/* write (optional verify) an image to flash memory of the given target */
int flash_write_unlock(struct target *target, struct image *image,
		uint32_t *written, int erase, bool unlock);

#endif /* OPENOCD_FLASH_NOR_IMP_H */
