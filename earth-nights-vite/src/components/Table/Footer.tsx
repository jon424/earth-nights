import React, { useState, ChangeEvent, MouseEvent } from 'react';
import { Modal, Button, Form, TextArea } from 'semantic-ui-react';
import '../../styles/aplayer.css';

interface FormState {
  name: string;
  email: string;
  message: string;
  nameError: boolean;
  emailError: boolean;
  messageError: boolean;
  formError: boolean;
  errorMessage: string;
  complete: boolean;
  modalOpen: boolean;
}

const Footer: React.FC = () => {
  const [formState, setFormState] = useState<FormState>({
    name: '',
    email: '',
    message: '',
    nameError: false,
    emailError: false,
    messageError: false,
    formError: false,
    errorMessage: 'Please complete all required fields.',
    complete: false,
    modalOpen: false
  });

  const handleClose = () => setFormState(prev => ({ ...prev, modalOpen: false }));
  const handleOpen = () => setFormState(prev => ({ ...prev, modalOpen: true }));

  const capitalize = (string: string): string => {
    return string.charAt(0).toUpperCase() + string.slice(1);
  };

  const submitMeetingForm = async (e: MouseEvent<HTMLButtonElement>) => {
    e.preventDefault();
    
    let error = false;
    const newState = { ...formState };

    if (formState.name === '') {
      newState.nameError = true;
      error = true;
    } else {
      newState.nameError = false;
    }

    if (formState.email === '') {
      newState.emailError = true;
      error = true;
    } else {
      newState.emailError = false;
    }

    if (formState.message === '') {
      newState.messageError = true;
      error = true;
    } else {
      newState.messageError = false;
    }

    if (error) {
      newState.formError = true;
      setFormState(newState);
      return;
    }

    newState.formError = false;
    setFormState(newState);

    try {
      await fetch('https://earth-nights-api.onrender.com/send', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          name: formState.name,
          email: formState.email,
          message: formState.message
        })
      });
      setFormState(prev => ({ ...prev, complete: true }));
    } catch (err) {
      console.error('Error submitting form:', err);
    }
  };

  return (
    <>
      <Button onClick={handleOpen} basic color='blue'>Contact</Button>
      <Modal
        open={formState.modalOpen}
        onClose={handleClose}
        closeIcon
      >
        <Modal.Header>Send A Message</Modal.Header>
        <Modal.Content>
          {!formState.complete ? (
            <Modal.Description>
              <Form error={formState.formError}>
                <Form.Group widths='equal'>
                  <Form.Field>
                    <Form.Input
                      required
                      onChange={(e: ChangeEvent<HTMLInputElement>) => 
                        setFormState(prev => ({ ...prev, name: e.target.value }))}
                      id='name'
                      label='Name'
                      placeholder="Name..."
                      error={formState.nameError}
                    />
                  </Form.Field>
                </Form.Group>

                <Form.Field>
                  <Form.Input
                    required
                    onChange={(e: ChangeEvent<HTMLInputElement>) => 
                      setFormState(prev => ({ ...prev, email: e.target.value }))}
                    id='email'
                    label='Email'
                    placeholder="Email..."
                    error={formState.emailError}
                  />
                </Form.Field>
                <Form.Field
                  control={TextArea}
                  required
                  onChange={(e: ChangeEvent<HTMLTextAreaElement>) => 
                    setFormState(prev => ({ ...prev, message: e.target.value }))}
                  id='message'
                  label='Message'
                  placeholder='Message...'
                  error={formState.messageError}
                />
              </Form>
            </Modal.Description>
          ) : (
            <div className='modal-complete'>
              <p>Thanks, {capitalize(formState.name)}. We've received your message and we'll be in touch shortly.</p>
            </div>
          )}
        </Modal.Content>
        {!formState.complete && (
          <Modal.Actions>
            <Button color='red' onClick={handleClose}>Close</Button>
            <Button 
              positive 
              icon='checkmark' 
              labelPosition='right' 
              content="Submit" 
              onClick={submitMeetingForm} 
            />
          </Modal.Actions>
        )}
      </Modal>
    </>
  );
};

export default Footer;