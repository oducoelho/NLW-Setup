-- DropForeignKey
ALTER TABLE `day_habits` DROP FOREIGN KEY `day_habits_day_id_fkey`;

-- DropForeignKey
ALTER TABLE `day_habits` DROP FOREIGN KEY `day_habits_habit_id_fkey`;

-- DropForeignKey
ALTER TABLE `habit_week_days` DROP FOREIGN KEY `habit_week_days_habit_id_fkey`;

-- RenameIndex
ALTER TABLE `day_habits` RENAME INDEX `day_habits_habit_id_fkey` TO `day_habits_habit_id_idx`;
