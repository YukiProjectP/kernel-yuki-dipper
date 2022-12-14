/*
 * Copyright (c) Xiaomi Technologies Co., Ltd. 2020. All rights reserved.
 * Copyright (C) 2021 XiaoMi, Inc.
 *
 * File name: oem_binder.c
 * Description: millet-binder-driver
 * Author: guchao1@xiaomi.com
 * Version: 1.0
 * Date:  2020/9/9
 */
#define pr_fmt(fmt) "millet-binder_gki: " fmt

#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/freezer.h>
#include <linux/ktime.h>
#include <linux/hrtimer.h>
#include <linux/proc_fs.h>

static int __init init_binder_gki(void)
{
	pr_err("enter init_binder_gki func!\n");
	return 0;
}

module_init(init_binder_gki);

MODULE_LICENSE("GPL");