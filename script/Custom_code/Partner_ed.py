# Server Action Python code for Odoo
# This code sets the partner field based on the account type (employee reimbursement or vendor bill).

def set_partner(record, env):
    # If the account is for employee reimbursements, set the partner to the employee's partner
    if record.account_id.code == '250110':
        # Assuming the partner_id field contains the ID of the employee's partner
        record.write({'x_studio_partner01': record.partner_id})
    else:
        # If the related field contains the name of the partner, search for the partner by name
        partner_name = record.x_studio_related_field_OnQRe
        if partner_name:
            # Search for the partner by its name
            partner = env['res.partner'].search([('name', '=', partner_name)], limit=1)
            if partner:
                # If a partner is found, write its ID to the x_studio_partner01 field
                record.write({'x_studio_partner01': partner.id})

# Apply the logic to each record that triggers this action
for rec in records:
    set_partner(rec, env)
