---
- name: Run custom script on all servers
  hosts: nodes
  become: no
  tasks:
    - name: Execute the script
      ansible.builtin.command:
        cmd: bash /root/atc/ap.sh
      register: script_result

    - name: Show script output
      ansible.builtin.debug:
        msg: "{{ script_result.stdout }}"
