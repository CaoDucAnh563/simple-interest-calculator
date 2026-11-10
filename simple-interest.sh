#!/bin/bash

# Simple Interest Calculator Script

echo "==================================="
echo "    SIMPLE INTEREST CALCULATOR     "
echo "==================================="

# Nhập số tiền gốc
read -p "Enter Principal Amount (P): " principal

# Nhập lãi suất hàng năm (%)
read -p "Enter Annual Rate of Interest (%): " rate

# Nhập thời gian tính theo năm
read -p "Enter Time Period (in years): " time

# Công thức tính Lãi đơn: SI = (P * R * T) / 100
# Sử dụng 'awk' để hỗ trợ tính toán số thực (số thập phân)
interest=$(awk "BEGIN {printf \"%.2f\", ($principal * $rate * $time) / 100}")
total=$(awk "BEGIN {printf \"%.2f\", $principal + $interest}")

echo "==================================="
echo "Results:"
echo "Simple Interest (Lãi): $interest"
echo "Total Amount (Tổng tiền): $total"
echo "==================================="
