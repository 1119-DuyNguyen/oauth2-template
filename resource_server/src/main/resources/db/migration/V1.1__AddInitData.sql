-- Insert data into the roles table
INSERT INTO roles (name, description) VALUES
                                          ('admin', 'Administrator with full access'),
                                          ('donor', 'User who donates to campaigns'),
                                          ('ctsv_staff', 'CTSV staff responsible for campaign management');

-- Insert data into the permissions table
INSERT INTO permissions (name, description) VALUES
                                                ('create_campaign', 'Permission to create charity campaigns'),
                                                ('approve_campaign', 'Permission to approve charity campaigns'),
                                                ('donate', 'Permission to make a donation'),
                                                ('view_reports', 'Permission to view financial reports');

-- Insert data into the role_permissions table
INSERT INTO role_permissions (role_id, permission_id) VALUES
                                                          (1, 1), -- admin can create campaigns
                                                          (1, 2), -- admin can approve campaigns
                                                          (1, 3), -- admin can donate
                                                          (1, 4), -- admin can view reports
                                                          (2, 3), -- donor can donate
                                                          (3, 2), -- CTSV staff can approve campaigns
                                                          (3, 4); -- CTSV staff can view reports

-- Insert data into the users table
INSERT INTO users (full_name, email, phone, password, role_id) VALUES
                                                                   ('John Doe', 'john.doe@example.com', '123456789', 'hashed_password_1', 1), -- Admin user
                                                                   ('Jane Smith', 'jane.smith@example.com', '987654321', 'hashed_password_2', 2), -- Donor user
                                                                   ('Emily Nguyen', 'emily.nguyen@example.com', '555123456', 'hashed_password_3', 3); -- CTSV staff

-- Insert data into the campaigns table
INSERT INTO campaigns (name, description, target_amount, current_amount, start_date, end_date, is_approved) VALUES
                                                                                                                ('Support Disadvantaged Students', 'Monthly support for disadvantaged students', 10000.00, 5000.00, '2024-01-01', '2024-12-31', TRUE),
                                                                                                                ('School Equipment Fund', 'Raise funds for school equipment', 20000.00, 15000.00, '2024-01-01', '2024-06-30', TRUE);

-- Insert data into the donations table
INSERT INTO donations (donor_id, campaign_id, amount_base, amount_total, donation_date, frequency) VALUES
                                                                                                       (2, 1, 500.00, 500.00, '2024-02-01', 'monthly'),
                                                                                                       (2, 2, 1000.00, 1000.00, '2024-03-01', 'yearly');

-- Insert data into the recurring_donations table
INSERT INTO recurring_donations (donation_id, next_donation_date) VALUES
                                                                      (1, '2024-03-01'), -- For the monthly donation
                                                                      (2, '2025-03-01'); -- For the yearly donation

-- Insert data into the beneficiaries table
INSERT INTO beneficiaries (user_id, campaign_id, situation_detail, support_received, verification_status) VALUES
                                                                                                              (3, 1, 'Student with financial difficulties', 500.00, TRUE),
                                                                                                              (3, 2, 'Support for school equipment needs', 1000.00, TRUE);
